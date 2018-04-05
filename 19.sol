pragma solidity ^0.4.4;

contract MappingExample {
    mapping(address => uint) banlances;

    function update(address a, uint newBanlance) public {
        banlances[a] = newBanlance;
    }

    function searchBanlance(address a) constant public returns(uint){
    return banlances[a];
    }
}
