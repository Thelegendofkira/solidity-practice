// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.26;
 import "./vehicle.sol";
 contract truck is vehicle{
   uint public  nowheels;
   constructor(string memory _brand,uint _nowheels) vehicle(_brand){
nowheels=_nowheels;
   }
   function description() public pure override  returns(string memory){
      return "this is a truck";
   }


 }
