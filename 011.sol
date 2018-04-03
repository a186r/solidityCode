//eth中的地址长度为20字节，每个字节8位，一共160位，所以address也可以使用uint160来声明
//将eth地址的0x（0x表示16进制）去掉，剩下的进行二进制转换，它的二进制正好160位
//eth钱包地址使用16进制呈现，一个16进制的数字等于4个字节，160/4=40，所以eth钱包的地址长度正好应该是40

//msg.sender就是当前调用方法时的发起人，一个合约部署后应该有很多人来操作合约，但是如何正确判断谁是合约的拥有者，就是第一次部署合约是谁出的gas，谁就是合约的拥有人

pragma solidity ^0.4.4;

contract Test{
    address public _owner;
    uint public _number;
    
    function Test(){
        _owner = msg.sender;
        _number = 100;
    }

    function msgSenderAddress() constant returns (address){
        return msg.sender;
    }

    function setNumberAdd1(){
        _number = _number + 5;
    }

    function setNumberAdd2(){
        if(_owner == msg.sender){
            _number = _number + 1;
        }
    }
}
