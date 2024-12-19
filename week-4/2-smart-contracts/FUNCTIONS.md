Functions are where logic sequences executed and are defined by “function” keyword.

# Syntax

In Solidity, function declarations consists of “function” keyword, function name, function type, return type (if it returns something), and the logic of the function.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract GameContract {
   function getUserName(address _user) public view returns(string username) {
	   // All stataments that have to be executed
   }
}
```

![image.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/2572e903-b68a-44d1-9c24-44473bb1f7dd/baec9dbb-86c5-446d-813d-9819d3c8d751/image.png)

# Visibility

Access to a function can be determined by declaring visibility identifier. Visibility identifier allows developers to determine who or which contracts can invoke that function. Visibility identifiers can be listed from most-public to least-public as following:

- public: any contract or EOA (externally owned account) can invoke the function
- external: only other (external) contracts or EOAs can invoke the function, internal is not allowed
- internal: only this and its inherited contracts can invoke the function
- private: only this contract can invoke the function

# Writing to a Storage

A function can update or write to a variable if and only if that function is not declared as pure or view. View declaration is used to only return (view) a variable or a state in solidity. Whereas, pure declaration is used to indicate the function neither writing to the storage nor viewing any variable or state.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract LuckyNumberContract {

uint public luckyNumber;

   function updateLuckyNumber(uint _luckyNumber) public returns(uint) {
	   luckyNumber = _luckyNumber;
       return luckyNumber;
   }

   function incrementLuckyNumber() public returns(uint) {
	   luckyNumber = luckyNumber + 1;
       return luckyNumber;
   }

   function getLuckyNumber() public view returns(uint) {
	   return luckyNumber;
   }

   function predictLuckyNumber(uint _luckyNumber) public pure returns(uint) {
	   uint prediction = _luckyNumber + 1;
	   return prediction;
   }
}
```

# Require Concept

If a function should operate within a restricted parameter set, states or invoked parameters can be verified whether the condition is met with require(). In the following example, the provided input is checked whether it is greater than 5 and if not it returns the string “It is below 5.” as an error.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract LuckyNumberContract {

uint public luckyNumber;

   function updateLuckyNumber(uint _luckyNumber) public returns(uint) {
   require(_luckyNumber > 5, "It is below 5.");
	   luckyNumber = _luckyNumber;
       return luckyNumber;
   }

}
```

# Smart Contract Context

In smart contracts, functions are called via transactions and the information of the transaction is stored in the context variables which can be accessed in the smart contracts.

## Message Context (msg)

- msg.sender: returns the current transaction sender address
- msg.value: returns the value property of the current transaction

## Transaction Context (tx)

- tx.gasLimit: returns the gasLimit property if the current transaction

## Block Context (block)

- block.number: returns the current block number
- block.timestamp: returns the current block timestamp
