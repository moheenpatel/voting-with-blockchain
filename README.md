# Voting with Blockchain

## Description
This project presents an innovative Online Voting System built on blockchain technology, aiming to transform traditional electoral practices. Leveraging the security and transparency offered by blockchain, the system ensures integrity, transparency, and accessibility in the voting process. This project leverages blockchain technology to create a robust and tamper-proof voting system.

## Problem Statement
The election is a fundamental pillar of a democratic system, which enables the public to express their views in the form of a vote. Due to their significance in our society, the election process should be transparent and reliable to ensure participants of its credibility.

Online voting is a trend that is gaining momentum in modern society. It has great potential to decrease organizational costs and increase voter turnout. It eliminates the need to print ballot papers or open polling stations—voters can vote from wherever there is an Internet connection. Despite these benefits, online voting solutions are viewed with a great deal of caution because of :
* Eligibility: Only legitimate voters should be able to take part in voting.
* Non Reusability: Each voter can vote only once.
* Privacy: No one except the voter can obtain information about the voter’s choice.
* Fairness: No one can obtain intermediate voting results.
* Soundness: Invalid ballots should be detected and not taken into account during tallying.
* Completeness: All valid ballots should be tallied correctly.

## Solution
Developed an innovative Online Voting System utilizing blockchain technology to revolutionize traditional electoral processes. Implemented a decentralized, secure, and transparent platform for conducting elections, ensuring integrity and inclusivity in voting.

### Technologies Used :
* **Smart Contract Development:** Solidity
* **IDE Tool:** Remix
* **Blockchain Platform:** Ethereum
* **Local Blockchain Network:** Ganache

### Project Participants and Actions :
This project involves three main participants with distinct actions:

#### 1. Voting Admin
The **Voting Admin** possesses the following capabilities :
- **Start election:** Initiate the election process.
- **End election:** Conclude the ongoing election.
- **Show results:** Display the results of the concluded election.

#### 2. Voter
The **Voter** is equipped with the following functionalities :
- **Register a new voter:** Enable the addition of new voters to participate in the election.
- **Vote for the candidate:** Cast a vote for a chosen candidate.
- **Delegate the voting right:** Allow the transfer of voting rights to another eligible voter.
- **View voter details:** Access and view specific voter information.

#### 3. Candidate
The **Candidate** holds the following privileges :
- **Register a new candidate:** Register a new candidate for participation in the election.
- **View the list of candidates:** Access the list of registered candidates.
- **View candidate details:** Retrieve and view specific details of a candidate.

### Functions of this Application :
This application provides the following functionalities :

#### 1. Add a New Candidate
- Adds a new candidate to the election; exclusively available to the admin before the election starts.

#### 2. Add a New Voter
- Enables the addition of a voter; available only once to the admin before the election begins.

#### 3. Start Election
- Allows the admin to commence the election by setting the Election state to ONGOING. Requires the address of the contract owner as an input parameter.

#### 4. Display Candidate Details
- Shows detailed information about a candidate based on the provided candidate ID.

#### 5. Show the Winner of the Election
- Displays the winner of the election.

#### 6. Delegate Voting Right
- Enables a voter to delegate their voting rights to another individual.

#### 7. Cast Vote
- Allows voters to cast their votes.

#### 8. End the Election
- Permits the admin to conclude the ongoing election. This function can only be executed by the admin (contract owner).

#### 9. Show Election Results (Candidate-wise)
- Presents the number of votes received by any given candidate.

#### 10. View Voter’s Profile
- Displays the voter's profile information based on the voter’s address, including:
  - Voter’s name
  - The candidate who has been voted for
  - Delegation status of the vote (if delegated or not)

### Application Testing and Demo :

- Opened Remix IDE and created a Smart contract namely **voting.sol** . Click on this link to look at the code.


