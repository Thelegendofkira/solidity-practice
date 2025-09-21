// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract inheritance{
    modifier  onlyowner{
        require(msg.sender==owner, "you are not the owner");
        _;
    }
    uint prevpingtime;
    uint amount;
    address owner;
    address recipient;
    constructor(address _recipient){
        require(_recipient!=address(0),"default not accepted");
        prevpingtime=block.timestamp;
        owner=msg.sender;
        recipient=_recipient;
    }
    function deposite() payable  public {
        amount+=msg.value;
    }
    function changerecipient(address newreceipent)public onlyowner{
        require(newreceipent!=address(0),"default not accepted");
        recipient=newreceipent;
    }
    function ping()public onlyowner {
      prevpingtime=block.timestamp;

    }
    function withdraw(uint val) public {
        if(msg.sender==owner){
            payable(msg.sender).transfer(val);
            amount-=val;
        }
        else if(msg.sender==recipient){
            if(block.timestamp-prevpingtime>30){
                payable(msg.sender).transfer(amount);
                amount=0;
            }
        }
    }

    

}