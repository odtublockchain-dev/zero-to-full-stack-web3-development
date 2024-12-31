// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/LuckyNumber.sol";
contract LuckyNumberTest is Test {
    LuckyNumber public luckyNumber;
    address owner;
    address user;

    function setUp() public {
        owner = address(this);
        user = address(0x1);
        vm.deal(user, 1 ether);
        luckyNumber = new LuckyNumber();
    }

    function testSetLuckyNumber() public {
        uint256 expectedNumber = 7;
        luckyNumber.setLuckyNumber(expectedNumber);
        assertEq(luckyNumber.getLuckyNumber(), expectedNumber);
    }

    function testGetLuckyNumber() public view {
        uint256 expectedNumber = 0;
        assertEq(luckyNumber.getLuckyNumber(), expectedNumber);
    }

    function testOwnerIsCorrect() public view {
        assertEq(luckyNumber.getOwner(), owner);
    }

    function testNonOwnerCannotSetLuckyNumber() public {
        vm.prank(user);
        vm.expectRevert("Only owner can update");
        luckyNumber.setLuckyNumber(42);
    }

    function testChangeLuckyNumberWithPayment() public {
        uint256 newNumber = 42;
        vm.prank(user);
        luckyNumber.changeLuckyNumber{value: 0.001 ether}(newNumber);
        assertEq(luckyNumber.getLuckyNumber(), newNumber);
    }

    function testChangeLuckyNumberWithZeroValue() public {
        vm.prank(user);
        vm.expectRevert();
        luckyNumber.changeLuckyNumber{value: 0}(42);
    }

    function testChangeLuckyNumberWithZeroNumber() public {
        vm.prank(user);
        vm.expectRevert();
        luckyNumber.changeLuckyNumber{value: 0.001 ether}(0);
    }
}