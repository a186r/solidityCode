pragma solidity ^0.4.4;

contract C {
    bytes9 public g = 0x6c686878888555;

    string public name = "laabchsad";

    function gByteLength() constant returns (uint){
        return g.length;
    }

    function nameBytes() constant returns (bytes){
        return bytes(name);
    }

    function nameLength() constant returns (uint){
        return bytes(name).length;
    }

    function setNameFirstByteForL(bytes1 z){
        bytes(name)[0] = z;
    }
}

//将name转换为bytes然后再调用bytes的length属性来获取字符串的长度
//将name转换为bytes，然后再调用bytes的某个下标进行重新赋值，达到修改string的目的。
