pragma solidity ^0.4.4;

contract C{
    bytes public name = new bytes(2);

    function setNameLength(uint 1){
        name.length = len;
    }

    function nameLength() constant returns (uint) {
        return name.length;
    }

    function pushAByte(byte b){
        name.push(b);
    }
}

/*我们可以通过bytes1,bytes2,bytes3,bytes4,……,bytes32来声明字节数组变量，不过通过bytesI来声明的字节数组为不可变字节数组，字节不可修改，字节数组长度不可修改。*/


/*我们可以通过bytes name = new bytes(length) - length为字节数组长度，来声明可变大小和可修改字节内容的可变字节数组。*/

