// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Array{

    // Several ways to initialize an array

    uint[] public arr;
    uint[] public arr1 = [1,2,3];
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i ) public view returns (uint){
        return arr[i];
    }
    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.

    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function push(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.pop();
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        return arr.pop();
    }

    function getLength() public view returns (uint){
        return arr.length;
    }

    function remove(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }    

    function del() public {
        arr = [1, 2, 3, 4];
        remove(1);
        //[1,4,3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1, 4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }

    function examples() external{
        // create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
    }
}
