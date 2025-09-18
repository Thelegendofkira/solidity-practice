// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract presonreg{
    struct person{
        string name;
        uint age;
        address account;
    }
    mapping(address=>person) public book;
    function setuser(string memory _name,uint _age,address _account) public{
        person memory newperson=person(_name,_age,_account);
        // person memory newperson;
        // newperson.name=_name;
        // newperson.age=_age;
        // newperson.account=_account;
        book[msg.sender]=newperson;
    }
}