// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract vehicle{
string public  brand;
constructor (string memory _brand){
    brand=_brand;
}
function description() public pure virtual  returns(string memory){
    return "i am a vehicle";
}
}
