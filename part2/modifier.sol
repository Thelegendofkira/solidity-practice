// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ownerreq{
    address owner;
    int sum=0;
    constructor(){
        owner=msg.sender;
    }
    modifier  ownercheck{
        require(owner==msg.sender,"only the owner can change");
        _;
    }
    function addsum(int a) public ownercheck returns(int){
        sum+=a;
        return  sum;
    }
}