pragma solidity ^0.4.4;

contract Power{
    uint value;

    /*合约初始化时调用构造函数*/

    function Power(uint number,uint p){
        value = number ** p;
    }

    function getPower() constant returns (uint){
        return value;
    }
}
