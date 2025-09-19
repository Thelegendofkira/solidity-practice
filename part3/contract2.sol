// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface newmessage {
        function setMessage(string memory _message) external ;
        function getMessage() external  view returns(string memory ,address);
        
    }
contract proxycont{
    
    function proxysetmessage() public {
         newmessage(0x0498B7c793D7432Cd9dB27fb02fc9cfdBAfA1Fd3).setMessage("this is jaideep");
        
    }
    function proxygetmessage() public view returns(string memory,address){
       return newmessage(0x0498B7c793D7432Cd9dB27fb02fc9cfdBAfA1Fd3).getMessage();
    }
}