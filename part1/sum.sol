// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;
contract calcultor{
    uint currval;
    constructor(uint _currval){
        currval=_currval;
    }
    function add(uint val) public returns(uint ){
        currval+=val;
        return currval;
    }
    function mul(uint val)public returns(uint){

        currval*=val;
        return currval;
    }
    function divide(uint val)public pure returns (uint){
        require(val!=0);
        return  0;

    }
    function addnumbers(uint[] memory val )public pure returns (uint){
        uint sum=0;
        for(uint i=0;i<val.length;i++){
       sum+=val[i];
        }
        return sum;
    }
}