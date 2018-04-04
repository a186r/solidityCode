pragma solidity ^0.4.4;

contract C {
    bytes public name = new bytes(1);

    function setNameLength(uint length){
        name.length = length;
    }

    function nameLength() constant returns (uint) {
        returns name.length;
    }
}
