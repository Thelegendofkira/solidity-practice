// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract arraydyn{
    function addsum(uint[] memory array) public  pure returns(uint){
        uint sum=0;
         for(uint i=0;i<array.length;i++){
            sum=sum+array[i];
         }
         return sum;
    }
}