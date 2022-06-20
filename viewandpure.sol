//View and Pure functions
// getter functions can be declared view or pure
// view function declares that no state will be changed
// pure function delcares that no state variabel will be changed or read

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ViewAndPure{
    uint public x = 1;

    //promise not to modify the state
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    //promise not to modify or read from the state
    function add(uint i, uint j) public pure returns(uint){
        return i + j;
    }
}
