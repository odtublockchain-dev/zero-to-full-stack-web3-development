// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Loop {
    uint public lastI;
    uint public lastJ;

    function loop() public {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }
            if (i == 5) {
                lastI = i;
                break;
            }
        }

        uint j;
        while (j < 10) {
            j++;
            lastJ = j;
        }
    }
}
