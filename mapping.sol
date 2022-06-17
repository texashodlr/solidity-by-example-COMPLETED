//Maps are created with syntax mapping(keyType => valueType).
//the keyType can be any built in value type, bytss string and or any contract
// value type can be any type inclduing another mapping array
//Mappings are not iterable

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping {
    //Mapping from address to uint
    mapping(address => uint) public myMap;

    function get (address _addr) public view returns (uint) {
        //Mapping always returns a value
        // If the value was never set it will return the default value 
        return myMap[_addr];
    }

    function set (address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }
    function remove (address _addr) public {
        // Reset the value to default value
        delete myMap[_addr];
    }
}

contract NestedMapping {
    //nested mapping (mapping from addres to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr, uint _i) public view returns (bool){
        //You can get values from a nested mapping
        //Even when it is not initalized
        return nested[_addr][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public{
        nested[_addr1][_i] = _boo;
    }

    function remove (address _addr1, uint _i) public{
        delete nested[_addr1][_i];
    }
}

//used my dummy address to play around with the mappings
