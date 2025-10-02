// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";

contract proxy_intro is Ownable{
    uint  public num=0;
 address public implementation;


 constructor(address _imp) Ownable(msg.sender){
    implementation=_imp;

 }
  
  function setNum(uint val) public {
    (bool success,)=implementation.delegatecall(abi.encodeWithSignature("setNum(uint256)",val));
    require(success,"error");
  }

  function setimplementation(address _imp)public  onlyOwner{
    implementation=_imp;
  }
 
}

contract logic{
    address ownable;
    uint public  num;
    function setNum(uint _num)public{
        num=_num;
    }
}
contract logic2{
     address ownable;
    uint  public num;
    function setNum(uint _num)public{
        num=2*_num;
    }
}
contract logic3{
     address ownable;
    uint public  num;
    function setNum(uint _num)public {
        num=3*_num;
    }
}
