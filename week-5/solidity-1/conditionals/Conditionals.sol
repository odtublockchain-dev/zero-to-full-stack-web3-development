// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Conditionals {
    function isPositive(int x) public pure returns (bool) {
        if (x < 0) {
            return false;
        } else if (x > 0) {
            return true;
        } else {
            return false;
        }
    }

    function ternary(int _x) public pure returns (bool) {
        return _x > 0 ? true : false;
    }
}
