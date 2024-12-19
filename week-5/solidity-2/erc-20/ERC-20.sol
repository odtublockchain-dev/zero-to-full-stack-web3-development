//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Excelcium is ERC20 {
    uint constant _initial_supply = (10 ** 8) * (10 ** 18);

    constructor() ERC20("Excelcium", "EXC") {
        _mint(msg.sender, _initial_supply);
    }
}
