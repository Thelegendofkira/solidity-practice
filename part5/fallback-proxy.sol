// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract fallback_proxy{
uint public num;
address public implementation;
constructor(address _implementation){
    implementation=_implementation;
}
fallback() external {
    (bool success,)=implementation.delegatecall(msg.data);
    require(success,"fallback not successful");
 }
}

contract implementation_contract{
    uint nums;
    function setNum(uint _nums) public {
        nums=_nums;
    }
}