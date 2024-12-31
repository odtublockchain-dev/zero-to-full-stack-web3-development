# **Week 6 / Workshop 12 / dApp Development**

# Development Environment Setup

1. Download and install Visual Studio Code for Mac, Linux and Windows: https://code.visualstudio.com/download
2. Install git (useful for general purpose):
    - Mac:
        - Using bash command: `git --version`
        - Using binary installer: https://git-scm.com/download/mac
    - Linux:
        - Using bash command: `sudo dnf install git-all`
    - Windows:
        - Binary installer: https://git-scm.com/download/win
3. Setup a new UNIX environment in Windows:
    - Install Windows Terminal (produced by Microsoft Corporation) from Microsoft Store.
    - To activate admin level operations, run in terminal: `wsl --install` . Click “Yes” to the opening windows. Restart your computer if it is not directed to set username.
    - In the opening terminal,
        - Set a username for Unix environment.
        - Set a password. (character is not displayed)
 
## Useful VS-Code Extensions:

- Solidity:
Name: Solidity / Id: NomicFoundation.hardhat-solidity VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=NomicFoundation.hardhat-solidity
- Even Better TOML:
Name: Even Better / TOML Id: tamasfe.even-better-toml VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml

# Foundry Installation



1. To install Foundry, run in the terminal: `curl -L https://foundry.paradigm.xyz | bash`    
2. Restart terminal or add Foundry in your path variable. To add Foundry in your path variables, run in the terminal: `source /Users/userName/shellType` . Replace `userName`  and `shellType` with your corresponding root file name and shell type. The command that you should run appears at the end of the output you receive after installing Foundry (step 1). 
3. To install or update the latest version of Foundry, run in the terminal: `foundryup`
4. Update git configuration:
    1. `git config --global user.name "userName"` . Replace `userName` with your Github username
    2. `git config --global user.email "eMail"` . Replace `eMail` with your email registered to Github.
5. To create a new folder for the project, run in the terminal: `mkdir token-project || cd token-project`     . You can replace `token-project` with a name of your choice.
6. To initiate a foundry project, run in the terminal`forge init` .

## Useful Links:

- Initial bash script:  [https://www.getfoundry.sh](https://getfoundry.sh/)
- Foundry Documentation: https://book.getfoundry.sh/getting-started/installation

# Commands

- To initiate a foundry project: `forge init`
- To compile solidity files: `forge build`
- To format solidity files: `forge fmt`
- To run tests: `forge test`
- To run local node environment and show its information:`anvil`
- To deploy a contract to a local network using forge: `forge create LuckyNumber --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80` . Replace  `LuckyNumber` with the contract name and type your private key after `--private-key` . `--interactive` can be used instead of`--private-key` tag.
- To run a script using foundry: `forge script script/DeployLuckyNumber.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80` . Replace `script/DeployLuckyNumber.s.sol`  with the path of the script of your preference.
- To invoke a function from a contract using foundry: `cast send 0xcf7ed3acca5a467e9e704c703e8d87f634fb0fc9 "setLuckyNumber(uint256)" 10 --rpc-url $RPC_URL --broadcast --private-key $PRIVATE_KEY` . Replace `0xcf7ed3acca5a467e9e704c703e8d87f634fb0fc9` with contract address of your contract, `"setLuckyNumber(uint256)"` with the function you want to call and the corresponding parameter type; and `10` with the function parameter.
- To read from a contract using foundry: `cast call 0xcf7ed3acca5a467e9e704c703e8d87f634fb0fc9 "getLuckyNumber()”` . Replace `0xcf7ed3acca5a467e9e704c703e8d87f634fb0fc9` with contract address and `"getLuckyNumber()”` with function signature.
- To convert hexadecimal to decimal: `cast -—to-base 0x000000000000000000000000000000000000000000000000000000000000000a dec` . Replace `0x000000000000000000000000000000000000000000000000000000000000000a` with a hexadecimal you want to convert.
- To store a private key securely using foundry:`cast wallet import account1 --interactive` . You can set a private key and a password for it in the opening terminal. `account1` can be replaced by a name of your choice.
- To deploy a contract using foundry and registered wallet (with cast): `forge script script/DeployLukyNumber.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --account account1 --sender 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266`  . Then, type the account password.