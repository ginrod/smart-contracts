// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EtherUnits {
    uint256 public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = (oneWei == 1);

    uint public oneGwei = 1 gwei;
    // 1 gwei is equal to 10^9 wei
    bool public isOneGwei = (oneGwei == 1e9);

    uint public oneEther = 1 ether;
    // 1 gwei is equal to 10^9 wei
    bool public isOneEther = (oneEther == 1e18);
}