//A Constructor is an optional function that is executed upon contract creation

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Base Contract X
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

//Base contract Y
contract Y{
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

//There are two ways to init parent contract with paramters
//pass the parameters here in the inheritance list
contract B is X("Input to X"), Y("Input to Y"){

}

contract C is X, Y{
    //Pass the param here in the constructo
    //Similar to func modifiers
    constructor(string memory _name, string memory _text) X(_name) Y(_text){}
}

// Parent constructors are always called in the order of inheritance
// regardless of the order of parent contracts listed in the
// constructor of the child contract.

//ORder of constructors called
// X -> Y->D
contract D is X, Y{
    constructor() X("X was called") Y("Y was called"){}
}

//Order X->Y->E
contract E is X, Y{
    constructor() Y("Y was called") X("X was called"){}
}
