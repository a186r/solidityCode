pragma solidity ^0.4.4;

contract Counter{
    uint count = 0;

    /*调用时count+1*/
    function increment() public{
        count = count + 1;
    }

    /*读取count数据*/
    function getCount() constant returns (uint){
        return count;
    }
}
