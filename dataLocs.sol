//Variables are declared as either sotrage memory or call data to explicitly specify the location of the dat

//storage variable is a stat var stroed on the bc
// memory variable is in memory and it exists while a function is being called
// calldata special data location that contains function arguements

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DataLocations{
    uint[] public arr;
    mapping (uint => address) map;
    struct MyStruct{
        uint foo;
    }
    mapping (uint => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        //get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        //create a struct in memory
        MyStruct memory myMemStruct = myStructs[0];

    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        //do something with storage variables
    }

    //You can return memory variables
    function g(uint[] memory _arr) public returns (uint[] memory){
        //do something with memory arry
    }

    function h(uint[] calldata _arr) external {
        //do something with calldata array
    }
}
