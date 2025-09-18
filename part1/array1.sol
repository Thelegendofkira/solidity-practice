// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract array{
    uint[3] public arr;
    constructor(uint _num1,uint _num2,uint _num3){
        arr[0]=_num1;
        arr[1]=_num2;
        arr[2]=_num3;
    }
    function getvalue(uint idx)public view returns (uint){
        require(idx>=0&&idx<=arr.length);
        return arr[idx];

    }

}