// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract LuckyNumber {
    address owner;
    uint luckyNumber;

    constructor() {
        owner = msg.sender;
    }

    function setLuckyNumber(uint _luckyNumber) public {
        require(msg.sender == owner, "Only owner can update");
        luckyNumber = _luckyNumber;
    }

    function changeLuckyNumber(uint _newNumber) external payable {
        require(_newNumber > 0);
        require(msg.value > 0);
        luckyNumber = _newNumber;
    }

    function getLuckyNumber() public view returns (uint) {
        return luckyNumber;
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
