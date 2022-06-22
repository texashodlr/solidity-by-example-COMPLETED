//Unlike functions state variables cannot be overrideden by re declaring it in the child contract


//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A{
    string public name = "Contract A";

    function getName() public view returns (string memory){
        return name;
    }
}

//Shadowing is disalowed in solidity 0.6

contract C is A{
    //This is the correct way to override inheritted state variabkles
    constructor(){
        name = "Contract C";
    }
}
