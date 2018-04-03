pragma solidity ^0.4.4;

contract Counter{
    uint count = 0;
    address owner;//存储Counter合约owner

    function Counter(){
        owner = msg.sender;//存储Counter合约owner
    }

    function increment() public{
        if(owner ==msg.sender){//判断是谁在调用increment方法
            count = count + 1;
        }
    }

    /*读取count的值*/
    function getCount() constant returns (uint) {
        return count;
    }

    function kill(){
        if(owner == msg.sender){
            selfdestruct(owner);//销毁合约
        }
    }
}
