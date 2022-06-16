//As we all know transactions are paid in ether
// Similar to how one dollar is equal to 100 cents, one ether is 
//equal to 10^18 wei

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EtherUnits { 
    uint public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;
}
//looks like ether and wei are direct callable vars
