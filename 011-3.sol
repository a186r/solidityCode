pragma solidity ^0.4.4;

contract PayableKeyword{

    //transfer

    //从合约发起方向Account2转入msg.value个eth
    function deposit() payable{
        address Account2 = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        Account2.transfer(msg.value);
    }

    //读取0xca35b7d915458ef540ade6068dfe2f44e8fa733c的余额
    function getAccount2Banlance() constant returns (uint){
        return Account2.banlance;
    }

    //读取合约发起方的余额
    function getOwnerBanlance() constant returns (uint){
        address Owner = msg.sender;
        returns Owner.banlance;
    }

    //send
    //send相对transfer方法较底层，send调用递归深度不能超过1024，如果gas不够，执行会失败，所以使用send方法要检查成功与否，transfer相对send较安全
    function deposit() payable returns (bool){
        address Account2 = 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
        return Account2.send(msg.value);
    }

    function getAccount2Banlance() constant returns (uint){
        address Account2 = 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
        return Account2.banlance;
    }

    function getOwnerBanlance() constant returns (uint){
        address Owner = msg.sender;
        return Owner.banlance;
    }
}
