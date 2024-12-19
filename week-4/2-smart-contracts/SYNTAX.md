Official Docs: https://docs.soliditylang.org/en/v0.8.11/

Solidity is a high-level, object oriented programming language that allows developers to create smart contracts on Ethereum or similar EVMs. Its syntax is fairly close to JavaScript.

## Contract

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract StorageContract {

}
```

## Basic Data Types

Solidity is statically typed language. So, every variable has to have a data type that is correlated with its usage.

### Integers

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract StorageContract {
   uint userPositivity = 1; // 256 bits unsigned integer
   int someNegativity = - 1; // 256 bits signed integer
   uint8 x = 255 // 8 bits unsinged integer with a max value
   uint16 y = 65535; // 16 bits unsigned integer with max value
   uint32 z = 2**32 - 1; // 32 bits unsigned integer with max value
   uint256 t = 2**256 - 1; // 256 bits unsigned integer with max value
}
```

### Strings

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract StorageContract {
	string userName = "excalibur17";
}
```

### Address

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract StorageContract {
	address payable owner = 0x6BF530eFC7caeF0F2d81DE36D8B162B977416d0D;
	address userAddress = 0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045;

	uint ownerBalance = owner.balance;
	uint contractBalance = address(this.balance);
}
```

### Boolean

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract StorageContract {
	bool isActive = false;
	bool isMember = true;
}
```

## Constructor

The constructor function is called once when the contract deployed. It is mostly used to store store state variables.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract StorageContract {
	constructor() {
		// Executed once when contract deployed
	}
}
```

## State Variables

State variables are variables that are determined at the deployment of the contract.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract StorageContract {

	address owner;
	string nickname;

	constructor(address _owner, string _nickname) {
		owner = _owner;
		nickname = _nickname;
	}
}
```

## Visibility

In solidity, functions’ visibility can be classified as public, private, internal and external. Public functions can be accessed from anywhere whereas private functions can be only be called in its defined contract. Variable can be declared as public, a getter function is generated to allow access to variable. Default variable visibility is private, so it does not have to be explicitly typed. The private keyword doesn’t actually secure the data’s privacy. Any data committed to the Ethereum blockchain remains publicly accessible to anyone. Marking data as private only prevents other contracts from reading or changing it.

In our last example, we might want to keep the owner address to be not publicly accessible, and rather the nickname that owner chooses to be publicly accessible.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

address owner; // private
string public nickname;

contract StorageContract {
	constructor(address _owner, string _nickname) {
		owner = _owner;
		nickname = _nickname;
	}
}
```
