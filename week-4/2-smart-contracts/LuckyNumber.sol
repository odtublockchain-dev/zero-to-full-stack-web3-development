// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract LuckyNumberContract {
    uint public luckyNumber;

    address public owner;

    constructor(uint _init) {
        luckyNumber = _init;
        owner = msg.sender;
    }

    function getLuckyNumber() public view returns (uint) {
        return luckyNumber;
    }

    function updateLuckyNumber(uint _luckyNumber) public returns (uint) {
        require(msg.sender == owner);
        luckyNumber = _luckyNumber;
        return luckyNumber;
    }

    function incrementNumber() external payable {
        require(msg.value > 0, "Not enough ETH");
        luckyNumber++;
    }
}
