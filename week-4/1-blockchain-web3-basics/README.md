# **Week 4 / Workshop 7 / Web3 & Blockchain Basics**

# Systems 101

Central systems are doomed to be apocalyptical due to excessive power of abuse. Hence, the drive to use decentralized systems is inevitable.

In this context, a system is referred to as any software that aims to solve a problem.

## Centralized Systems

A centralized system is a structure in which one single entity (such as a server, organization, or authority) controls the entire operation. All decisions, data, and functions pass through this central point, making it the single source of truth and control.

- **Example**: Traditional banks, cloud storage providers (Google Drive), social media platforms (Facebook, Instagram), etc.

## Decentralized Systems

In decentralized systems, no single entity has control. Instead, the system operates through a network of participants (nodes) that work together. Each participant has equal authority and access to data, eliminating the need for a central point of control.

- **Example**: Blockchain technology, peer-to-peer networks like BitTorrent, cryptocurrencies like Bitcoin and Ethereum.

# Centralized Systems

Central systems are run by on-premise servers (dedicated servers) or servers hosted on the cloud. They heavily rely on not revealing server-side information like IP or server connections and keeping the maintained code confidential to avoid security vulnerabilities.

## **Pros of Centralized Systems**

1. **Efficiency**: Since there’s a central point of control, decision-making is fast.
2. **Easy management**: Clear hierarchy and simpler governance make management straightforward.
3. **Cost-effective**: Easier to implement and maintain because of standard infrastructure.
4. **Accountability**: Easier to identify responsible parties when issues arise.

## **Cons of Centralized Systems**

1. **Single point of failure**: If the central server or authority is compromised, the entire system can fail.
2. **Control and censorship**: The central authority can control or restrict access to information or services.
3. **Data breaches**: Sensitive data is often stored in one place, making it vulnerable to large-scale hacks.
4. **Scalability**: As the number of users grows, central servers can become bottlenecked and require significant resources to scale.

## **Use Cases**

- **Financial systems**: Central banks, traditional payment processors like Visa, PayPal.
- **Cloud computing**: AWS, Microsoft Azure.
- **Social media**: Facebook, Twitter.
- **E-commerce**: Amazon, eBay.

# Decentralized Systems

Decentralized systems are run by distributed nodes, meaning that many different computers run the logic of the same system. The information regarding nodes (e.g., IP, connection) and the maintained code are publicly available in decentralized systems, enabling verification by different nodes.

## **Pros of Decentralized Systems**

1. **No single point of failure**: If one node goes down, the system continues to operate through other nodes.
2. **Transparency**: All participants have access to the same information, reducing opportunities for manipulation.
3. **Censorship resistance**: No central authority can block or censor users.
4. **Security**: Information is distributed, reducing the risks of hacking and data breaches.
5. **User empowerment**: Participants have more control over their own data and assets.

## **Cons of Decentralized Systems**

1. **Efficiency**: Decision-making and consensus can be slow and resource-intensive, especially in large networks (e.g., blockchain mining).
2. **Governance**: Achieving agreement across all participants can be challenging, leading to slower adaptation and evolution of the system.
3. **Cost**: The distributed infrastructure and maintenance can be more costly and complex than centralized systems.
4. **Complexity**: Difficult to implement and understand for the average user due to the technical expertise required.

## **Use Cases**

- **Cryptocurrencies**: Bitcoin, Ethereum.
- **Blockchain technology**: Supply chain tracking, decentralized finance (DeFi), voting systems.
- **Decentralized storage**: IPFS (InterPlanetary File System), Filecoin.
- **Peer-to-peer networks**: BitTorrent, decentralized apps (DApps).

# Evolution of Web Technology

The internet technology invented in its early days is vastly different from what we use today. It has evolved tremendously, not only in terms of capabilities but also in its direction and purpose. Here is its progression:

## **The Birth of the World Wide Web**

The basic concept of the World Wide Web was invented by Tim Berners-Lee in 1989 to be used as an internal network in CERN. The initial purpose of the World Wide Web was to create a system that made internal file transfers easier. However, Tim soon realized his invention could be scaled and used globally.

---

## **Web 1.0**

Web 1.0 represents the initial phase of internet technology. During this era:

- Web pages were purely **read-only** and **static**.
- Interaction with websites was not possible.
- Software and web applications were hosted on dedicated servers (**on-premise**).

---

## **Web 2.0**

Web 2.0 marked a significant leap in web technology. During this phase:

- Web technologies evolved to allow users to **interact** with web applications.
- Users could **read** and **write** content on web applications.
- Infrastructure transitioned from **on-premise systems** to **cloud-hosted servers**.

---

## **Web 3.0**

Web 3.0, also known as the **Semantic Web**, introduced a revolutionary concept of internet technology. Key features of this era include:

- Users can **read**, **write**, and **execute** on the internet.
- Actions in Web 3.0 are verified and executed by **nodes in decentralized networks**, not by a single server or entity.
- The system is not owned by any single authority; instead, it is owned by the network nodes, ensuring that:
  - **Data is not owned by any central entity**.
  - Information is **distributed across users**.

---

# Blockchain Concept

A blockchain is a decentralized database that consists of a series of verified blocks. Each block holds data, typically in the form of transactions, and is cryptographically linked to the previous block, forming a continuous “chain”.

![The structure of a block in a blockchain](https://prod-files-secure.s3.us-west-2.amazonaws.com/2572e903-b68a-44d1-9c24-44473bb1f7dd/3045458c-9ae5-48ad-bdea-9f3fa1f68e3a/image.png)

_The structure of a block in a blockchain._

In computer science, a **node** refers to an element or component within a data structure. For simplicity, a node can be understood as a computer. These data structures consist of nodes (or computers) that are used to update and manage data.

A blockchain consists of **nodes distributed globally**, working together in real-time without a central authority, such as a “supernode,” to oversee data changes. All nodes are equal participants in the network, ensuring consistent performance regardless of which node is used to update the data. In essence, blockchains operate as **peer-to-peer networks**.

# Components of Blockchain

Blockchain Components

1.  **Cryptography**

Cryptography in blockchain ensures the security, integrity, and privacy of transactions and data. Blockchain heavily relies on cryptographic techniques to protect the data and ensure trust among participants.

**Key Cryptographic Concepts:**

• **Hash Functions**: These are algorithms that take an input and produce a fixed-length string of characters, which is unique to the input. It’s used to generate the unique “hash” of a block.

• **Public and Private Keys**: Each user in a blockchain system has a pair of cryptographic keys—a public key (shared with others) and a private key (kept secret). The private key is used to sign transactions, while the public key allows others to verify the signature.

• **Digital Signatures**: A digital signature verifies the authenticity of a transaction. It confirms that a transaction was created by the owner of the corresponding private key.

**Why It’s Important:**

Cryptography ensures that transactions are secure, tamper-proof, and verifiable. It also guarantees the integrity of data on the blockchain.

**2. Block**

A block is the fundamental unit of a blockchain. Each block contains a collection of data (such as transactions) that are grouped together and added to the chain. Think of a block like a “page” in a ledger that records various transactions or actions.

**Key Components of a Block:**

• **Data**: The information stored in the block, typically transaction details. For cryptocurrencies like Bitcoin, this includes the sender, receiver, and amount.

• **Hash**: A unique digital fingerprint of the block. It ensures the block’s contents haven’t been altered. Any change in the block’s data will change the hash.

• **Previous Block’s Hash**: The hash of the previous block in the chain. This links the blocks together in chronological order and creates the “chain” of blocks.

**Why It’s Important:**

Blocks are immutable once added to the blockchain, meaning they cannot be altered, ensuring the integrity of the data.

The chain structure ensures the integrity and security of the blockchain, making it resistant to tampering and fraud.

**3. Nodes**

Nodes are the individual computers or devices connected to the blockchain network. Each node holds a copy of the entire blockchain and participates in validating transactions.

**Key Functions of Nodes:**

• **Transaction Validation**: Nodes check and verify transactions to ensure they are legitimate and follow the network’s rules.

• **Maintaining Consensus**: All nodes work together to agree on the state of the blockchain. This is often referred to as “reaching consensus.”

• **Storing a Full Copy of the Blockchain**: Every full node has a complete history of all transactions on the blockchain, making the network decentralized and secure.

**Why It’s Important:**

Nodes are the backbone of a decentralized blockchain network. They ensure that no single entity has control over the blockchain and that the system is secure and trustworthy.

**4. Miners**

Miners are a specialized type of node that validates transactions and adds them to the blockchain. Miners perform complex mathematical computations (called “Proof of Work”) to solve cryptographic puzzles and create new blocks.

**Key Functions of Miners:**

• **Transaction Validation**: Miners bundle transactions into blocks and validate them.

• **Mining Process**: To add a block to the chain, miners must solve a difficult mathematical problem (Proof of Work) that requires significant computational power.

• **Rewards**: Once a miner successfully adds a block, they are rewarded with newly minted cryptocurrency (such as Bitcoin) and transaction fees.

**Why It’s Important:**

Miners maintain the security of the blockchain by ensuring only valid transactions are added. The mining process also incentivizes participants to maintain the network.

1. **Consensus Mechanism**

A consensus mechanism is the protocol used by nodes in a blockchain network to agree on the validity of transactions and the state of the blockchain. It ensures all nodes have a synchronized and identical version of the blockchain.

**Key Types of Consensus Mechanisms:**

• **Proof of Work (PoW)**: Used by Bitcoin, this mechanism requires miners to solve computational puzzles to add new blocks. It’s secure but energy-intensive.

• **Proof of Stake (PoS)**: Used by networks like Ethereum 2.0, this method allows participants to create new blocks and validate transactions based on the amount of cryptocurrency they “stake” as collateral, making it more energy-efficient.

• **Delegated Proof of Stake (DPoS)**: Participants vote for a few validators to approve new blocks, making the process faster and more scalable.

**Why It’s Important:**

Consensus mechanisms ensure the network remains decentralized, secure, and resistant to fraud or attacks. They determine how the system achieves agreement without the need for a central authority.

1. **Smart Contracts**

A smart contract is a self-executing contract where the terms are directly written into lines of code. Once the predefined conditions are met, the contract automatically executes, without the need for intermediaries.

**Key Aspects:**

• **Automation**: Smart contracts execute automatically once the conditions are met, reducing the need for intermediaries (like lawyers or banks).

• **Immutability**: Once deployed on the blockchain, a smart contract cannot be altered. This ensures transparency and security.

• **Transparency**: The terms of the contract are visible to all participants, ensuring trust and accountability.

**Why It’s Important:**

Smart contracts enable complex transactions, such as decentralized finance (DeFi), supply chain automation, and legal agreements, to occur without intermediaries, reducing costs and inefficiencies.

1.  **Distributed Ledger**

A distributed ledger is a database that is spread across multiple nodes or participants in a blockchain network. Every participant has access to the ledger, and any updates to the ledger must be agreed upon by the network.

**Key Characteristics:**

• **Decentralized**: No single entity controls the ledger. Instead, all participants have equal access.

• **Immutable**: Once data is recorded on the ledger, it cannot be changed or tampered with.

• **Transparent**: All participants can see the transactions and the state of the ledger.

**Why It’s Important:**

The distributed ledger ensures that the blockchain is decentralized and secure, with all participants having the same version of the truth. This eliminates the need for trust in a single entity.

These components work together to form the foundation of blockchain technology, enabling decentralized, secure, and transparent systems. Each part plays a crucial role in maintaining the integrity, security, and efficiency of the blockchain network.

1. Remote Procedure Call (RPC)

**Definition**:

RPC, or **Remote Procedure Call**, is a protocol that allows one program to request a service or function execution from another program running on a different machine or network without needing to understand the underlying details of the communication. In the context of blockchain, RPC allows decentralized applications (DApps), wallets, and other systems to interact with blockchain nodes seamlessly.

**How RPC Works in Blockchain:**

1. **Client-Server Model**:

RPC follows a client-server model where the client (often a wallet, DApp, or any other external application) sends a request to a blockchain node (the server) to execute a function or retrieve information. The node processes the request and sends back a response.

• **Client**: The entity that makes the request (for example, your crypto wallet).

• **Server**: The blockchain node that executes the requested function and returns the result.

1. **Procedure Call**:

The client can “call” a specific function or request data, such as retrieving the current state of the blockchain, broadcasting a transaction, checking balances, or interacting with smart contracts. These requests are sent over the network without the client needing to know how the node internally processes the request.

1. **Transport Layer**:

The communication between the client and the blockchain node occurs over a transport protocol (often HTTP or WebSockets). This layer ensures that requests and responses are transferred reliably over the internet.
