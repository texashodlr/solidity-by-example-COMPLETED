// Main use of this file is to show off state/local/global

/*

There are three types of variables in solidity.
1) Local -- declared inside a function and NOT stored in a blockchain
2) State -- declared outside a function AND stored on the blockchain
3) Global -- provides information about the blockchain

*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Variables {
    //State variables are stored on the blockchain
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        //local vars are not saved to the blockchain
        uint i = 456;

        //Here are some global variables
        uint timestamp = block.timestamp; //Current block timestamp
        address sender = msg.sender; // Address of the caller (originator)
    }
}

//The global variables can be moved out of the function and made public to access them.
