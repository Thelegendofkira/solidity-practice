// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract eventsgen{
    event transfer(address indexed  form,address indexed to,uint val);
    function Transfer(address from,address to,uint val ) public {
    //transfer logic
    emit transfer(from,to,val);
    }
    
}