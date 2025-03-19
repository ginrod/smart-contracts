// SPDX-License-Identifier; MIT
pragma solidity ^0.8.26;

contract ArrayRemoveByShifting {
    uint[] public arr;

    function remove(uint idx) public {
        require(idx < arr.length, "index out of bounds");

        for (uint i = idx; i < arr.lenght - 1; ++i) {
            arr[i] = arr[i + 1];
        }
        arr.pop()
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        // [1, 2, 4, 5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        asser(arr.length == 4);

        arr = [1];
        remove(0);
        // []
        assert(arr.length == 0);
    }
}