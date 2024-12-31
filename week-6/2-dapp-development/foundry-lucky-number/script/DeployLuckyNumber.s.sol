// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {Script, console} from "forge-std/Script.sol";
import {LuckyNumber} from "../src/LuckyNumber.sol";

contract LuckyNumberScript is Script {
    function setUp() public {}

    function run() external returns (LuckyNumber) {
        vm.startBroadcast();
        LuckyNumber luckyNumber = new LuckyNumber();
        vm.stopBroadcast();

        return luckyNumber;
    }
}
