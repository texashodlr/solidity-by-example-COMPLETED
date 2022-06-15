// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter{
    uint public count;

    //Function to get the current count
    function get() public view returns (uint){
        return count;
    }

    //Function to increment count by 1
    function inc() public {
        count += 1;
    }

    //Function to decrement count by 1
    function dec() public {
        count -= 1;
    }
}

// Notes
/**

- If we dec from 0 we get this error:
transact to Counter.dec errored: VM error: revert.

revert
	The transaction has been reverted to the initial state.
Note: The called function should be payable if you send value and the value you send should be less than your current balance.
Debug the transaction to get more information.

*/
