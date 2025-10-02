// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract multipliercontract{
    uint public num=1;
    uint private setmul=1;
    constructor (uint _num){
        num=_num;
    }
    function setmultiple(uint _mul)public{
setmul=_mul;
    }

    function multiplier()public {
        num=setmul*num;
    }

}