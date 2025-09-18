// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
 contract personContract{
    struct Person{
        string name;
        uint age;
        address account;
    }

    Person public person;
 
 function setperson(string memory _name,uint _age,address _account) public {
person.name=_name;
person.age=_age;
person.account=_account;
 }
 



 }