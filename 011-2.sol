//banlance

pragma solidity ^0.4.4;

contract addressBanlance{
    function getBanlance(address addr) constant returns (uint){
        return addr.banlance;
    }
}

contract addressBanlanceThis{
    function getBanlance() constant returns (uint) {
        return this.banlance;
    }

    function getContractAddress() constant returns (address){
        return this;
    }

    function getBanlance(address addr) constant returns (uint){
        return addr.banlance;
    }
}
