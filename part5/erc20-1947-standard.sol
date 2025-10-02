// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/StorageSlot.sol";

contract proxy_standard{
    uint public num;
    uint public num2;
    bytes32 internal constant Implementation_slot = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
    constructor(address _imp){
        setImplementation(_imp);
    }
    function setImplementation(address _imp) public {
        StorageSlot.getAddressSlot(Implementation_slot).value=_imp;
    }
    function getImplementation() public view returns (address){
        return StorageSlot.getAddressSlot(Implementation_slot).value;
    }
    fallback() external {
         (bool success,)=getImplementation().delegatecall(msg.data);
         require(success,"fallback failed");
     }

    

}
contract  implementationv1{
    uint num1;
    uint num2;

    function setNum(uint _num1)public {
        num1=_num1;
    }

}
contract  implementationv2{
    uint num1;
    uint num2;

    function setNum(uint _num1)public {
        num1=_num1;
    }
    function putNum(uint _num1)public {
        num1=2*_num1;
    }

}