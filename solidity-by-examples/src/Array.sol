// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    function getArr(uint i) public view returns (uint[] memory) {
        return arr[i];
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint i) public {
        delete arr[i];
    }

    function examples() external pure {
        uint[] memory a = new int[](5);

        uint[][] memory b = new uint[][](2);

        for (uint i = 0; i < b.length; ++i) {
            b[i] = new uint[](3);
        }

        b[0][0] = 1;
        b[0][1] = 2;
        b[0][2] = 3;
        b[1][0] = 4;
        b[1][1] = 5;
        b[1][2] = 6;
    }
}