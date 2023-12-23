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

- Opened Remix IDE and created a Smart contract namely **[voting.sol](https://github.com/moheenpatel/voting-with-blockchain/blob/main/voting.sol)** .
  
  ![image32](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/58aac717-a518-4ef5-b5ed-b34eeb86b768)

- Code compiled successfully.
- Connected to Ganache Network and Deployed the Smart Contract using below address : 
0xEe6FF97b8689663CE96F4F50b73Ff234AD013c17

![image12](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/f0e6f351-0fdd-4f71-a60a-eacd6b73854a)

![image5](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/2da8df8e-008b-4a6c-ba44-7a958a1b4da6)

- Below is the Output of all the Functions which will be used in Execution of our voting application :

  ![image20](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/71778ba0-da03-4127-b80a-5fd00ba57926) ![image13](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/9a3b0990-0895-4bea-b630-aa47fae874a2)

- Voting application’s Admin information :

  ![image19](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/92aa991b-30fd-4df6-9e08-695ce7f9a01a)

- Added 2 candidates who will be competing in the Elections :

  - Candidate ID : 0

    ![image3](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/e230f020-8a88-457b-937a-4c3eefb1f56c)

  - Candidate ID : 1

    ![image4](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/9aac7c26-0826-4d2b-962e-1d719f405e0a)

- Total number of candidates who will be competing in the Election is 2 :

  ![image28](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/47aa225d-c875-49f1-9e4f-5619aeefdeac)

- Added 3 voters who will be participating in the election to elect a candidate by voting them :

  - Voter 1 Address : 0x142d4Bc61Db225F21AA5E25Dde0431a17d716cD3

    ![image30](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/6bfed779-f35b-4a3c-8d95-3d957a781823)

  - Voter 2 Address : 0x4866416e5B29D2612B8A0B16de061868278B8860

    ![image11](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/bd248850-ff91-4f06-9dea-9b132f199120)

  - Voter 3 Address : 0xcC56e31ddA8AF0244284e2CA6650E59e69b0168e

    ![image17](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/bba860ab-533f-4fee-8116-e41d14e4f8bd)

- Total Number of voters is 4 :

  ![image8](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/04991f32-2d9c-4b77-ac20-b4b37992b84d)

- There are three states in the Election:
  - NOT_STARTED = 0
  - ONGOING = 1
  - ENDED = 2

- Election is not started yet therefore Election state is 0 (i.e NOT_STARTED) :

  ![image14](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/0fce05f9-5236-44fb-9557-06498c482d7d)

- Started Election and the Election state has now changed to 1 (i.e ONGOING) :

  ![image1](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/896a4d7a-38b8-40f0-9cf3-1db820c16308)

- Function to fetch Candidate details :

  ![image16](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/b2a9b97d-15ae-4f78-9117-84bc74b997bb)
  
  ![image9](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/9c26f01c-9354-46a4-8dc5-7f94e04ad30d)

- Casting Vote :

  - Voter 1 gave vote to Candidate with ID 1
    
    ![image21](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/510c40b8-3a10-400d-96e1-a74610a36510)

    ![image26](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/9291525d-d938-4375-b787-5736afe9286b)

  - Voter 2 gave vote to Candidate with ID 0
 
    ![image25](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/790e24c0-f529-45f7-8066-6486a90e2dbd)

    ![image27](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/e8e55727-4bb0-41a4-9692-80451fc94402)

  - Voter 3 gave vote to Candidate with ID 0
 
    ![image15](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/e5b5b24c-b809-44ae-85a5-752b73919afe)

    ![image18](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/ebc63888-47c7-4b48-9d43-4eb758f7694a)

- Below is the function to find number of votes received by a particular candidate :

    - Candidate ID 0 (i.e Narendra Modi) has received 2 votes

      ![image31](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/a108599d-205a-4c96-94e0-3b33c68a40fa)

    - Candidate ID 1 (i.e Rahul Gandhi) has received 1 vote

      ![image24](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/c8353bc1-95f6-4347-8e33-d9790420f15f)

- Function to check whether each voter has voted and to whom they have voted :

  - Voter 1 has given vote to Candidate with ID 1 (i.e Rahul Gandhi)
 
    ![image6](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/93cdd7bf-203f-4a54-9061-f3716597d6ef)

  - Voter 2 has given vote to Candidate with ID 0 (i.e Narendra Modi)

    ![image2](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/ba22fb8d-0012-4da5-b1a6-eeaf7d4cba18)
    
  - Voter 3 has given vote to Candidate with ID 0 (i.e Narendra Modi)

    ![image10](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/fad3ae57-9377-4df3-a9af-a691855c3f93)

- Below Function shows which candidate got how many votes :

    - Candidate ID 0 (i.e Narendra Modi ) has received 2 votes

      ![image29](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/a319a949-bda9-4755-84d2-ea2813be156d)

    - Candidate ID 1 (i.e Rahul Gandhi ) has received 1 vote
 
      ![image23](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/1ca02d29-db51-442b-ac96-fc8bcb45127d)

- Below function helps determine who is the winner of the election :
    
    - Since Candidate ID 0 (i.e Narendra Modi) got 2 votes, therefore Narendra Modi is the winner

      ![image7](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/547dcb26-05be-483b-a4de-cf19be404e74)

- Ended Election :

  ![image22](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/17ed0453-a871-4498-a144-42723abb4f15)

- As the Election has ended the Election state has changed to 2 (i.e ENDED) :

  ![image33](https://github.com/moheenpatel/voting-with-blockchain/assets/72771390/18476f0b-b89a-44e3-a963-322a9d2e9282) 

### $${\color{red}End \space of \space Application \space Testing \space and \space Demo}$$



----

## Benefits of the online voting system built on blockchain over traditional voting systems :

- **Enhanced Transparency :** Blockchain technology ensures transparency by storing immutable records of every transaction or vote, allowing for easy auditing and verification. This transparency helps build trust among voters.
- **Security and Immutability :** The decentralized nature of blockchain ensures a high level of security. Once a vote is recorded on the blockchain, it cannot be altered or tampered with, ensuring the integrity of the electoral process.
- **Elimination of Fraud :** Blockchain-based voting systems minimize the risk of fraudulent activities such as duplicate voting, as each voter's identity is securely verified and recorded.
- **Increased Accessibility :** Online voting systems enable voters to participate from anywhere with internet access, eliminating the need for physical presence at polling stations. This accessibility potentially leads to higher voter turnout.
- **Cost and Efficiency :** By leveraging blockchain technology, the system reduces the costs associated with traditional paper-based voting, such as printing, distribution, and manual counting. This enhances the efficiency of the voting process.
- **Immutable Records and Audit Trail :** The blockchain maintains an immutable record of all votes, providing an easily auditable trail. This feature allows for comprehensive post-election analysis and auditing.
- **Elimination of Intermediaries :** Traditional voting systems often involve intermediaries, which can introduce vulnerabilities. Blockchain-based systems eliminate the need for intermediaries, reducing the risk of manipulation.
- **Real-time Results :** The decentralized nature of the blockchain allows for real-time counting and availability of election results, providing faster and more accurate outcome announcements.
- **Inclusivity and Accessibility :** Online voting systems can be designed to be more inclusive for individuals with disabilities or those who may face challenges in physically accessing polling stations.
- **Adaptability and Innovation :** Blockchain-based voting systems pave the way for continuous innovation in the electoral process, allowing for the integration of new technologies to further enhance security and accessibility.


## Conclusion
The development of an online voting system leveraging blockchain technology marks a significant step towards revolutionizing the traditional electoral process. The project aimed to address critical challenges inherent in conventional voting systems by harnessing the power of decentralization, immutability, and transparency offered by blockchain. The development of this online voting system on the blockchain represents a pivotal advancement towards more secure, transparent, and inclusive democratic processes. By harnessing the transformative potential of blockchain technology, this project contributes to the evolution of electoral systems, paving the way for a future where trust, integrity, and accessibility define the democratic foundation.






  








