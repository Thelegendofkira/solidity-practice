// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract registry{

    mapping(address=>string) public reg;
    function register(string memory _name) public{
        reg[msg.sender]=_name;
    }
    function retrieve()public view returns(string memory){
        return reg[msg.sender];
    }
    
}