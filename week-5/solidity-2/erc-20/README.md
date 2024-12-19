# ERC-20: Token Standard

Token Standart is an agreed set of functions and events to represent fungible (interchangeable) assets in the blockchain. This ensures to have a common understanding of a token which simplifies to build and interact with the systems using tokens in the blockchain ecosystem. The aim of the tokens depend on the context its defined and potentially tokens can represent anything. Without a unified understanding of tokens, it would be extremely chaotic to build a decentralized finance project that allows users to sell, buy or deposit tokens on the blockchain.

# ERC-20 Token Smart Contract

In terms of smart contracts, an ERC-20 token is simply mapping of balances of fungible tokens. Functions and events that is included in ERC-20 listed as following:

## Token Metadata

### **name**

- **Description**: Returns the token’s name (e.g., “MyToken”).
- **Usage**: Optional. Improves usability but must not be expected by interfaces or contracts.
- **Function Syntax**:

```solidity
function name() public view returns (string)
```

### **symbol**

- **Description**: Returns the token’s symbol (e.g., “HIX”).
- **Usage**: Optional. Improves usability but must not be expected by interfaces or contracts.
- **Function Syntax**:

```solidity
function symbol() public view returns (string)
```

### **decimals**

- **Description**: Specifies the number of decimals the token uses (e.g., 8 means divide the amount by 100,000,000 to get the user-readable value).
- **Usage**: Optional. Improves usability but must not be expected by interfaces or contracts.
- **Function Syntax**:

```solidity
function decimals() public view returns (uint8)
```

## **Token Supply**

### **totalSupply**

- **Description**: Returns the total number of tokens in circulation.
- **Function Syntax**:

```solidity
function totalSupply() public view returns (uint256)
```

## **Account Balances**

### **balanceOf**

- **Description**: Returns the balance of a specific account.
- **Parameters**:
- \_owner: The address of the account to query.
- **Function Syntax**:

```solidity
function balanceOf(address _owner) public view returns (uint256 balance)
```

## **Token Transfers**

### **transfer**

- **Description**: Transfers tokens from the caller’s account to another address.
- **Behavior**:
  - Fires a Transfer event.
  - Throws an error if the caller lacks sufficient tokens.
  - Treats zero-value transfers as normal transfers.
- **Parameters**:
  - \_to: Recipient address.
  - \_value: Amount of tokens to transfer.
- **Function Syntax**:

```solidity
function transfer(address _to, uint256 _value) public returns (bool success)
```

**transferFrom**

- **Description**: Transfers tokens from one address to another, typically used in workflows where a contract manages tokens on behalf of users.
- **Behavior**:
  - Fires a Transfer event.
  - Requires the sender to be authorized by the \_from account.
  - Treats zero-value transfers as normal transfers.
- **Parameters**:
  - \_from: Source address.
  - \_to: Recipient address.
  - \_value: Amount of tokens to transfer.
- **Function Syntax**:

```solidity
function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)
```

## **Token Approval and Allowance**

### **approve**

- **Description**: Authorizes a spender to withdraw tokens multiple times, up to a specified limit (\_value).
- **Note**:
  - User interfaces should ensure allowances are set to 0 before changing to another value to mitigate certain attack vectors.
  - Contracts should allow backward compatibility with older deployments.
- **Parameters**:
  - \_spender: Address authorized to spend tokens.
  - \_value: Maximum token amount they can spend.
- **Function Syntax**:

```solidity
function approve(address _spender, uint256 _value) public returns (bool success)
```

**allowance**

- **Description**: Returns the remaining token allowance for a spender.
- **Parameters**:
  - \_owner: Owner of the tokens.
  - \_spender: Address authorized to spend.
- **Function Syntax**:

```solidity
function allowance(address _owner, address _spender) public view returns (uint256 remaining)
```

## **Events**

### **Transfer**

- **Description**: Fired whenever tokens are transferred, including zero-value transfers.
- **Note**: Token creation should fire this event with \_from set to 0x0.
- **Event Syntax**:

```solidity
event Transfer(address indexed _from, address indexed _to, uint256 _value)
```

**Approval**

- **Description**: Fired upon a successful call to approve.
- **Event Syntax**:

```solidity
event Approval(address indexed _owner, address indexed _spender, uint256 _value)
```

# **Key Points**

**Callers**:

- Always handle false as a possible return value.
- Avoid assumptions about optional methods (name, symbol, decimals).

**Compatibility**:

- Ensure contracts support legacy implementations where necessary.

# Example Code

- To deploy a custom token:

```solidity
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Excelcium is ERC20 {
    uint constant _initial_supply = (10**8) * (10**18);
    constructor() ERC20("Excelcium", "EXC") {
        _mint(msg.sender, _initial_supply);
    }
}
```

- To inherit the functions of the token standart

```solidity
pragma solidity 0.8.4;

interface IERC20 {

    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);

    function transfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract AnyContract is IERC20 {
	// Rest of the contract
}
```

- To use function of a specific token

```solidity
pragma solidity 0.8.4;

interface IERC20 {

    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);

    function transfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract AnyContract {
	IERC20 usdc = IERC20(/*contract address*/);
	string name = usdc.name();
}
```
