// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mapping {
    mapping(address => uint) public myMap;

    function get(address addr) public view returns (uint) {
        return myMap[addr];
    }

    function set(address addr, uint value) public {
        myMap[addr] = value;
    }

    function remove(address addr) public {
        delete myMap[addr];
    }
}

contract NestedMapping {
    mapping(address => mapping(uint => bool)) public nested;

    function get(address addr, uint k) public view returns (bool) {
        return nested[addr][k];
    }

    function set(address addr, uint k, bool value) public {
        nested[addr][k] = value;
    }

    function remove(address addr, uint k) public {
        delete nested[addr][k];
    }
}