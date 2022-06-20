//Modifiers are code that can be run before and or after a function call
// modifiers can be used to 
//restrict acess / validate inputs and guard against reentrancy hack

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FunctionModifier{
    //We Will use these variables to demonstrate how to use modifiers
    address public owner;
    uint public x = 10;
    bool public locked;

    constructor(){
        //Set the transaction sender as the owner of the contract
        owner = msg.sender;
    }

    // Modifier to check that the caller is the owner of the contract
    modifier onlyOwner (){
        require(msg.sender == owner, "Not Owner");
        //Underscore is a special character only used inside
        // a function modifier and it tells solidity to execute the rest of the code
        _; //"Solidity Execute the rest"
    }

    //Modifiers can take inputs this modifier checks that the 
    //address passed in is not the zero address.
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not a valid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner){
        owner = _newOwner;
    }

    //Modifiers can be called before and after a function
    //This modifier prevents a function from being called while
    // it is still executing
    modifier noReentrancy(){
        require(!locked, "No reentrancy");

        locked = true;
        _;
        locked = false;
    }

    function decrement (uint i) public noReentrancy {
        x -= i;

        if(i > 1) {
            decrement(i - 1);
        }
    }
}
