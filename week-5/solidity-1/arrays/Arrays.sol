// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Array {
    uint[] public numbers;
    uint[] public list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    uint[10] public fixedSizedArray;

    function getListByIndex(uint i) public view returns (uint) {
        return list[i];
    }

    function getList() public view returns (uint[] memory) {
        return list;
    }

    function push(uint i) public {
        list.push(i);
    }

    function pop() public {
        list.pop();
    }

    function getListLength() public view returns (uint) {
        return list.length;
    }

    function remove(uint i) public {
        delete list[i];
    }
}
