In this task, we will save our lucky number on-chain and ensure that only the contract owner or those who pay for it can change it. (All steps should be performed using Remix IDE.)

1. **Define a contract**: Create a contract with a name of your choice. The license and Solidity compiler version are up to you, though I recommend using a Solidity compiler version above 0.8.0.
2. **Declare the owner**: Define a private address type variable named owner.
3. **Declare the lucky number**: Define a private unsigned integer (uint256) type variable named luckyNumber.
4. **Set up the constructor**: Define a constructor without any input arguments. This constructor should assign the owner variable to the deployer of the contract.
5. **Create a function to set the lucky number**: Define a public function named setLuckyNumber that can only be called by the contract owner. This function takes an unsigned integer as a parameter. It verifies that the caller of the transaction is the owner before setting the luckyNumber variable to the provided parameter.
6. **Create a function to retrieve the lucky number**: Define a public view function named getLuckyNumber that returns an unsigned integer. This function takes no parameters and returns the value of the luckyNumber variable.
7. **Create a function to retrieve the owner**: Define a public view function named getOwner that returns an address. This function takes no parameters and returns the value of the owner variable.
8. **Allow external changes to the lucky number**: Define an external payable function named changeLuckyNumber. This function takes an unsigned integer as a parameter. It ensures that both the unsigned integer parameter and the transaction value are greater than 0. If these conditions are met, it updates the luckyNumber variable to the provided parameter.
