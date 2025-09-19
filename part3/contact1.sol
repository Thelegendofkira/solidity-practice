// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract messagestorage{
    string messge;
    address sender;
    function setMessage(string memory _message) public{
        
        messge=_message;
        sender=msg.sender;
    }
    function getMessage() public view returns(string memory ,address){
        return (messge,sender);
    }
}