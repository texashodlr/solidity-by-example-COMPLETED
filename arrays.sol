// Arrays can have a compile time fixed size or a dynamic size

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Array{
    //several ways to initialize an Array
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    //fixed array size, all elements init to 0
    uint[10] public myFixedSizeArr;

    function get (uint i) public view returns (uint){
        return arr[i];
    }

    //Solidity can return the entire array.
    //But this function should be avoided for
    // Arrays that can grow indefinitely in length.
    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function push(uint i) public {
        //append to array
        // this will increase the array length by 1
        arr.push(i);
    }

    function pop() public{
        //Remove the last element from the array
        //This will decrease the array length by 1
        arr.pop();
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

    function examples() external {
        // create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
    }
}
