// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Loop {
    function loop() public pure {
        // for loop
        for (uint256 i = 0; i < 10; ++i) {
            if (i == 3) {
                continue
            }
            if (i == 5) {
                break;
            }
        }

        uint j;

        while (j < 10) {
            j++;
        }
    }
}