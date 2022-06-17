// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./EnumDeclaration.sol";

contract Enum {
    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    //Update status by passing uint into input
    function set(Status _status) public{
        status = _status;
    }

    //You can update to a specific enum like this
    function cancel() public{
        status = Status.Canceled;
    }

    function accepted() public{
        status = Status.Accepted;
    }

    //delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}
