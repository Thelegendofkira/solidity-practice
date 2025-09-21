// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract token{
    string public tokenname="Jaideep";
    string public symbol="Jai";
    mapping (address=>uint) public bank;
    mapping(address=>mapping(address=>uint)) allowance;
    uint  public totalamount=0;
    address owner;
    event transferevent(address indexed from,address indexed to,uint amount);
    
    constructor(){
        owner=msg.sender;
    }
    function mintto(address to,uint amount) public {
        require(msg.sender==owner);
        bank[to]+=amount;
        totalamount+=amount;
    }
    function burn(uint amt)public {
        require(bank[msg.sender]>=amt);
        bank[msg.sender]-=amt;
        totalamount-=amt;

    }
    function transfer(address from ,address to,uint amount) public{
        require(from==msg.sender);
        require(bank[msg.sender]>=amount);
        bank[from]-=amount;
        bank[to]+=amount;
    }
    function addallowance(address to,uint amount)public{
        require(bank[msg.sender]>=amount);
        allowance[msg.sender][to]=amount;
        emit transferevent(msg.sender,to,amount);
    }
    function useallowance(address from ,address to,uint amount)public{
        require(bank[from]>=amount);
        require(allowance[from][msg.sender]>=amount);
        bank[from]-=amount;
        bank[to]+=amount;
        allowance[from][msg.sender]-=amount;
        emit transferevent(from, to, amount);

    }
    function totalsupply()public view returns(uint){
return totalamount;
    }
    

}