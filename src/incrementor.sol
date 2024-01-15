// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.7.0;
contract Incrementor {
    uint256 private counter = 2 ** 200;

    function inc(uint256 val) public returns (uint256) {
        uint256 tmp = counter;
    
            counter += val;
            
        assert(tmp <= counter); // you basically assert something in the contract and started echinda on this contract using assertion mode
        // tmp <= counter
        return (counter - tmp);
    }
}