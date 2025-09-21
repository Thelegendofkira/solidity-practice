// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract pay{
    uint public totalamount=0;
    mapping (address=>uint) public  book ;
    function depostie() public payable {
        book[msg.sender]+=msg.value;
        totalamount+=msg.value;
    }
    function send(address payable ad)public {
          payable(ad).transfer(book[msg.sender]);
          totalamount-=book[msg.sender];
    }
}