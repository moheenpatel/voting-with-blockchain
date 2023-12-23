pragma solidity ^0.8.0;

contract Election {
	address public admin; // Address of the admin (contract owner)
	enum ElectionState { NOT_STARTED, ONGOING, ENDED } // Enum to represent the state of the election
	ElectionState public electionState; // Current state of the election

	// Struct to represent a Candidate
	struct Candidate {
  	  string name; // Name of the candidate
  	  string proposal; // Election proposal of the candidate
  	  uint votes; // Number of votes received by the candidate
	}

	// Struct to represent a Voter
	struct Voter {
  	  string name; // Name of the voter
  	  address delegate; // Address to whom the voting right is delegated
  	  bool voted; // Indicates if the voter has cast a vote
  	  uint vote; // ID of the candidate voted for
	}

	mapping(uint => Candidate) public candidates; // Mapping to store candidate details using candidate ID
	mapping(address => Voter) public voters; // Mapping to store voter details using Ethereum addresses
	uint public numCandidates; // Total number of candidates
	uint public numVoters; // Total number of voters

	// Modifier to restrict access to the admin only
	modifier onlyAdmin() {
  	  require(msg.sender == admin, "Only admin can call this function");
  	  _;
	}

	// Constructor to set the admin and initial state of the election
	constructor() {
  	  admin = msg.sender;
  	  electionState = ElectionState.NOT_STARTED;
	}

	// Function to add a new candidate by the admin before the election starts
	function addCandidate(string memory _name, string memory _proposal) public onlyAdmin {
  	  require(electionState == ElectionState.NOT_STARTED, "Election has already started");
  	  candidates[numCandidates] = Candidate(_name, _proposal, 0);
  	  numCandidates++;
	}

	// Function to add a new voter by the admin before the election starts
	function addVoter(address _voter) public onlyAdmin {
  	  require(electionState == ElectionState.NOT_STARTED, "Election has already started");
  	  require(voters[_voter].voted == false, "Voter already registered");
  	  voters[_voter].voted = false;
  	  numVoters++;
	}

	// Function to start the election by the admin
	function startElection() public onlyAdmin {
  	  require(electionState == ElectionState.NOT_STARTED, "Election has already started");
  	  electionState = ElectionState.ONGOING;
	}

	// Function to end the election by the admin
	function endElection() public onlyAdmin {
  	  require(electionState == ElectionState.ONGOING, "Election has not started or already ended");
  	  electionState = ElectionState.ENDED;
	}

	// Function to delegate voting rights to someone else
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

	// Function to cast a vote
	function castVote(uint _candidateId) public {
  	  require(electionState == ElectionState.ONGOING, "Election has not started or already ended");
  	  Voter storage sender = voters[msg.sender];
  	  require(!sender.voted, "You already voted");
  	  sender.voted = true;
  	  sender.vote = _candidateId;
  	  candidates[_candidateId].votes++;
	}

	// Function to get candidate details by candidate ID
	function getCandidateDetails(uint _candidateId) public view returns (string memory, string memory, uint) {
  	  return (candidates[_candidateId].name, candidates[_candidateId].proposal, candidates[_candidateId].votes);
	}

	// Function to get the winner of the election
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

	// Function to get election results for a specific candidate
	function getElectionResults(uint _candidateId) public view returns (uint) {
  	  return candidates[_candidateId].votes;
	}
}
