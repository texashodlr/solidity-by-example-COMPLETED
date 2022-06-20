//Events allow logging to the ethereum blockchain some use cases for events are
// listening for events and updating user interface
// a cheap form of storage

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event{
    //Event declaration
    // up to 3 paramters can be indexed
    //indexed parameters helps you filter the logs by the indexed parameter
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public{
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}
