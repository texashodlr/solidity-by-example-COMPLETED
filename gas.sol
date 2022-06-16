// You pay gas spent* gas price amount of ether, where:
// gas is a unit of computation
// gas spent is the total amount of fas used in a transaction
// gas price is how much ether you are willing to pay per gas
//Transactions with higher gas prices have higher priority to be included in a block
// unspent gas will be refunded

//Gas limit
//There are 2 upper bounds to the amount of gas you can spend 
//gas limit *max amount of gas you're willing to use for your transaction, set by you)
//block gas limt (max amount of gas allowed in a block, set by the network

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract gas { 
    uint public i =0;

    //using up all of the gas that you send causes your transaction to fail
    // state changes are undone
    // gas spent are not refunded
    function forever() public {
        //Here we run a loop until all of the gas are spent
        // and the transaction fails
        while (true){
            i += 1;
        }
    }
}
//Lol remix IDE in Brave browser crashes lol
