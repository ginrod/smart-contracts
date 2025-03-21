// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Variables {
    // Stae variables are stored on the blockchain
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public view {
        // Local variables are not saved to the blockchain
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}