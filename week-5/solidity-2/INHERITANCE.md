# What is Inheritance?

### Definition

Inheritance is a fundamental object-oriented programming concept where one contract can inherit properties and behaviors from another contract. In Solidity, this means a child contract can:

- Reuse code from a parent contract
- Extend or modify existing functionality
- Create more specialized contracts based on more generic base contracts

### Key Metaphor: Parent-Child Relationship

Think of inheritance like a family tree. Just as children inherit traits from their parents, contracts can inherit characteristics from parent contracts.

# Inheritance Mechanisms in Solidity

## Basic Syntax

```solidity
contract ParentContract {
    // Parent contract code
}

contract ChildContract is ParentContract {
    // Child contract inherits from ParentContract
}

```

## Types of Inheritance

1. **Single Inheritance**
   - One contract inherits from a single parent contract
   - Simplest form of inheritance
   - Allows child to access all non-private members of the parent
2. **Multi-Level Inheritance**
   - Creates a chain of inheritance
   - Contract A → Contract B → Contract C
   - Each contract builds upon the previous one
3. **Hierarchical Inheritance**
   - One base contract serves as a parent for multiple child contracts
   - Multiple siblings inherit from the same parent

# Practical Use Cases

## Access Control: OpenZeppelin Ownable

```solidity
contract Ownable {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}

contract MyContract is Ownable {
    // Now has built-in owner access control
    function secureFunction() public onlyOwner {
        // Only contract owner can call this
    }
}

```

## Multiple Inheritance

```solidity
contract Token {
    mapping(address => uint) balances;
}

contract MyToken is Token, Ownable {
    function mint(uint _amount) public onlyOwner {
        balances[msg.sender] += _amount;
    }
}

```

# Advanced Inheritance Techniques

## Virtual and Override Keywords

1. **Virtual Keyword**

   - Marks a function that can be overridden in child contracts

   ```solidity
   function baseFunction() public virtual returns (uint) {
       return 10;
   }

   ```

2. **Override Keyword**

   - Used in child contracts to provide a new implementation

   ```solidity
   function baseFunction() public override returns (uint) {
       return 15;
   }

   ```

## Example: Time-Locked NFT

- Simple NFT:

```solidity
contract NFT is Ownable {
    function transfer(address _recipient) virtual public onlyOwner {
        owner = _recipient;
    }
}

contract TimeLockedNFT is NFT {
    uint lastTransfer;

    function transfer(address _recipient) override public onlyOwner {
        require(block.timestamp - lastTransfer >= 10 days);
        owner = _recipient;
        lastTransfer = block.timestamp;
    }
}

```

- Simple Token:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Token {
    mapping (address => uint) balances;

    function getBalance(address _addr) public view returns(uint) {
        return balances[_addr];
    }
}

contract Ownable {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}

contract MyToken is Token, Ownable {
    function mint(uint _amount) public onlyOwner {
        balances[msg.sender] += _amount;
    }
}

```
