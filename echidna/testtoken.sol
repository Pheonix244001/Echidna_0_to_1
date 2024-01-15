// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "../src/token.sol";

contract TestToken is Token {
    function echidna_balance_under_1000() public view returns (bool) {
        return balances[msg.sender] <= 1000;
    }

/*
    function echidna_revert_balance_under_1000() public view returns (bool) {
        return balances[msg.sender] > 1000;
    }
This function will always revert no matter what the bool is. Useful in cases where you want to make
a property revert regardless of what happens.

*/     
}