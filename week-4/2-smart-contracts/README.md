# **Week 4 / Workshop 8 / Smart Contract Basics**

# Concept of Smart Contracts

Nick Szabo, a renowned computer scientist and cypherpunk, introduced the idea of smart contracts and coined the term. In his 1996 paper, Szabo provided the foundational definition:

> “A smart contract is a set of promises, specified in digital form, including protocols within which the parties perform on these promises.”

Essentially, a **smart contract** is a self-executing contract with the terms of the agreement directly written into lines of code. Once the conditions in the contract are met, it executes automatically without the need for intermediaries like banks or lawyers, and even eliminates the need for central institutions like central banks. Broadly, any automated task can be decentralized using smart contracts.

---

## **Key Characteristics of Smart Contracts**

1. **Self-Executing**:  
   Automatically executes the actions outlined in the code when predetermined conditions are met, eliminating manual intervention.

2. **Immutable**:  
   Once deployed on the blockchain, the code cannot be altered or tampered with, ensuring the contract’s terms remain consistent.

3. **Distributed**:  
   Stored and replicated across multiple nodes, making them resistant to tampering or censorship.

4. **Transparent**:  
   The code and execution are visible to all participants, fostering trust among parties.

5. **Trustless**:  
   Operates autonomously based on pre-defined rules, eliminating the need for trust between parties or reliance on a third party.

---

## **How Smart Contracts Work**

1. **Agreement and Coding**:  
   Parties agree on the terms, which are then encoded into a smart contract using a programming language (e.g., Solidity for Ethereum).

2. **Deployment on the Blockchain**:  
   The smart contract is deployed on a blockchain, becoming immutable and accessible via a unique address.

3. **Execution**:  
   When the conditions are met (e.g., receiving payment), the contract automatically executes predefined actions.

4. **Verification and Record-Keeping**:  
   Each action is verified by the blockchain network and recorded as a permanent transaction.

---

## **Advantages of Smart Contracts**

- **Automation**: Executes automatically, saving time and reducing costs by eliminating intermediaries.
- **Transparency**: Publicly visible terms and conditions reduce disputes.
- **Security**: Cryptographically secure and resistant to tampering or fraud.
- **Immutability**: Protects the integrity of agreements.
- **Trustless Transactions**: Ensures compliance with rules without relying on trust.

---

## **Limitations and Challenges of Smart Contracts**

1. **Immutability**:  
   Bugs or mistakes in the code cannot be easily fixed once deployed.

2. **Complexity**:  
   Requires technical expertise; vulnerabilities in code can be exploited.

3. **Legal Recognition**:  
   Not universally recognized as legally binding across jurisdictions.

4. **External Data Dependency (Oracle Problem)**:  
   Relies on oracles for off-chain data, introducing potential points of failure.

5. **Scalability**:  
   Execution can be slow and expensive, especially during high network congestion (e.g., gas fees on Ethereum).

---

## **Use Cases of Smart Contracts**

1. **Financial Services (DeFi)**:  
   Applications like **Uniswap** and **Aave** enable decentralized trading and lending without intermediaries.

2. **Supply Chain Management**:  
   Automates and tracks goods’ movement, ensuring transparency and reducing fraud.

3. **Insurance**:  
   Automates claims filing and payouts based on predefined conditions.

4. **Real Estate**:  
   Simplifies property transactions by automating agreements and removing intermediaries.

5. **Voting Systems**:  
   Ensures transparent, secure, and tamper-proof voting processes.

6. **Intellectual Property and Royalties**:  
   Automates royalty distribution for artists and creators.

---

## **Example of a Simple Smart Contract**

Here’s an example of a basic smart contract written in **Solidity** (Ethereum’s smart contract language):

```solidity
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Storage {
    uint256 number;

    // Store a value
    function store(uint256 num) public {
        number = num;
    }

    // Retrieve the stored value
    function retrieve() public view returns (uint256) {
        return number;
    }
}
```
