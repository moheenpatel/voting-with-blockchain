pragma solidity ^0.8.0;

contract Election {
	address public admin;
	enum ElectionState { NOT_STARTED, ONGOING, ENDED }
	ElectionState public electionState;

	struct Candidate {
  	  string name;
  	  string proposal;
  	  uint votes;
	}

	struct Voter {
  	  string name;
  	  address delegate;
  	  bool voted;
  	  uint vote;
	}

	mapping(uint => Candidate) public candidates;
	mapping(address => Voter) public voters;
	uint public numCandidates;
	uint public numVoters;

	modifier onlyAdmin() {
  	  require(msg.sender == admin, "Only admin can call this function");
  	  _;
	}

	constructor() {
  	  admin = msg.sender;
  	  electionState = ElectionState.NOT_STARTED;
	}
	function addCandidate(string memory _name, string memory _proposal) public onlyAdmin {
  	  require(electionState == ElectionState.NOT_STARTED, "Election has already started");
  	  candidates[numCandidates] = Candidate(_name, _proposal, 0);
  	  numCandidates++;
	}

	function addVoter(address _voter) public onlyAdmin {
  	  require(electionState == ElectionState.NOT_STARTED, "Election has already started");
  	  require(voters[_voter].voted == false, "Voter already registered");
  	  voters[_voter].voted = false;
  	  numVoters++;
	}

	function startElection() public onlyAdmin {
  	  require(electionState == ElectionState.NOT_STARTED, "Election has already started");
  	  electionState = ElectionState.ONGOING;
	}

	function endElection() public onlyAdmin {
  	  require(electionState == ElectionState.ONGOING, "Election has not started or already ended");
  	  electionState = ElectionState.ENDED;
	}
	function delegateVotingRight(address _delegate) public {
  	  require(electionState == ElectionState.ONGOING, "Election has not started or already ended");
  	  Voter storage sender = voters[msg.sender];
  	  require(!sender.voted, "You already voted");
  	  require(_delegate != msg.sender, "Self-delegation is not allowed");
  	  while (voters[_delegate].delegate != address(0)) {
  		  _delegate = voters[_delegate].delegate;
  		  require(_delegate != msg.sender, "Loop in delegation detected");
  	  }
  	  sender.voted = true;
  	  sender.delegate = _delegate;
  	  Voter storage delegate = voters[_delegate];
  	  if (delegate.voted) {
  		  candidates[delegate.vote].votes++;
  	  }
	}

	function castVote(uint _candidateId) public {
  	  require(electionState == ElectionState.ONGOING, "Election has not started or already ended");
  	  Voter storage sender = voters[msg.sender];
  	  require(!sender.voted, "You already voted");
  	  sender.voted = true;
  	  sender.vote = _candidateId;
  	  candidates[_candidateId].votes++;
	}
	function getCandidateDetails(uint _candidateId) public view returns (string memory, string memory, uint) {
  	  return (candidates[_candidateId].name, candidates[_candidateId].proposal, candidates[_candidateId].votes);
	}

	function getWinner() public view returns (string memory, uint, uint) {
  	  uint maxVotes = 0;
  	  uint winningCandidateId = 0;
  	  for (uint i = 0; i < numCandidates; i++) {
  		  if (candidates[i].votes > maxVotes) {
  			  maxVotes = candidates[i].votes;
  			  winningCandidateId = i;
  		  }
  	  }
  	  return (candidates[winningCandidateId].name, winningCandidateId, maxVotes);
	}

	function getElectionResults(uint _candidateId) public view returns (uint) {
  	  return candidates[_candidateId].votes;
	}
}
