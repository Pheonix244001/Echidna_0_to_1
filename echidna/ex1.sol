// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "../src/token.sol";


contract TestToken is Token {
    address echidna = tx.origin;

    constructor() {
        balances[echidna] = 10_000;
    }

    function echidna_test_balance() public view returns (bool) {
        // TODO: add the property
        // we have to check that echidna caller cannot have more than 10k balance

        // This code also works
        // if (balances[echidna] > 10_000) {
        //     return false;
        // }
        // else {
        //     return true;
        // }

        return balances[echidna] <= 10_000;
    }
}