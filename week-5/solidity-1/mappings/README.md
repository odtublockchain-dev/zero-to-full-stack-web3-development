# Mappings

# **What Are Mappings?**

Mappings in Solidity are essentially hash tables or dictionaries in traditional programming languages. They allow developers to store key-value pairs, where each key is mapped to a value.

In computer science, a hash table stores data with keys that are hashed through a function to determine their position within the structure. Mappings in Solidity function similarly, allowing developers to quickly retrieve values based on a key.

# **A Hash Table Recap**

A hash table is a data structure that stores key-value pairs. The key is fed into a hash function, which outputs a hash value that dictates the index where the corresponding value is stored. This enables quick lookups, making hash tables an efficient data structure.

# **Mappings in Solidity**

In Solidity, mappings are defined as:

```solidity
mapping(keyType => valueType) public mappingName;
```

- **keyType**: The type of the key (e.g., address, uint, string, etc.)
- **valueType**: The type of the value (e.g., uint, bool, address, etc.)
- **mappingName**: The name of the mapping.

# **Useful for “address” Association**

Mappings are frequently used to associate **Ethereum addresses** with values. This is extremely useful in scenarios like tracking user balances or activity within a smart contract.

For example, to keep track of how many sodas a user has purchased from a vending machine, we could use:

```solidity
mapping(address => uint) public sodasPurchased*;*
```

This maps an Ethereum address to a uint value that keeps track of how many sodas the user has bought.

# **Accessing Values from a Mapping**

To retrieve a value from a mapping, simply reference the key:

```solidity
function numSodasPerUser(address _userAddress) public view returns (uint) {
	return sodasPurchased[_userAddress];
}
```

This function will return how many sodas the given address has purchased.

# **Updating Values in Mappings**

Mappings are dynamic. We can update them anytime, typically within a function:

```solidity
*functi*on purchaseSoda() public {
	require(numSodas > 0, "Sodas must be in stock!");
	sodasPurchased[msg.sender] += 1;  // Increment the count for the sender
	numSodas--;  // Decrease the stock of sodas
}
```

In this example, each time a user purchases a soda, the mapping sodasPurchased[msg.sender] is incremented by 1.

# **Mappings in Production: ERC-20 Tokens**

Mappings are not just for silly examples like vending machines; they’re used in serious applications like **ERC-20 tokens**.

An ERC-20 contract uses mappings to track the balances of users. Here’s an example from a popular ERC-20 token contract:

```solidity
mapping(address => uint) public balanceOf*;*
```

This mapping tracks how many tokens each address holds.

**Other Use Cases for Mappings 🚀**

Mappings can be used in various scenarios where you need to associate data with keys:

- **ERC-20 tokens**: Tracking balances of users.
- **DAOs**: Voting records.
- **Membership systems**: Keeping track of who’s a member.
- **Video games**: User levels and stats.

Here are some other examples:

```solidity
mapping(address => bool) public hasVoted*;   // Track votes in a DAO*
```

```solidity
mapping(uint => bool) public isMember*;       // Track membership status*
```

```solidity
mapping(string => uint) public userZipCode*;  // Track user zip codes*
```

# **Nested Mappings**

In more complex scenarios, you might need to track multiple relationships. **Nested mappings** allow you to map a key to another mapping, enabling multiple levels of association.

Example:

```solidity
mapping(address => mapping(uint => bool)) public votesPerProposal*;*
```

This tracks whether an address has voted on a specific proposal (identified by a uint).

## **Use Cases for Nested Mappings**

Nested mappings are useful when:

- A user must be associated with multiple values.
- There is a hierarchy or multi-dimensional data set to manage.

For example, a DAO might use nested mappings to track multiple proposals and whether each user voted on them.

# **Conclusion**

Mappings are an essential data structure in Solidity. They enable efficient, key-value-based storage and retrieval, making them incredibly useful in smart contracts. Whether for tracking user balances, votes, or membership, mappings allow developers to create robust and efficient decentralized applications. By mastering mappings, you’re laying the foundation for more advanced use cases and contract architectures.
