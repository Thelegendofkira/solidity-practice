// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallBack{
    event fallback_event();
    function sum() public returns (uint){
        return 1;
    }
    function div() public returns(uint){
        return 1;
    }
    fallback() external {
        emit fallback_event();
     }
}