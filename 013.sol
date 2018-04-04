//byte和byte1等价，只能存储一个字节，当超过它存储的范围时就会报错。

pragma solidity ^0.4.4;

contract C{
    bytes9 public g = 0x6c696978686;

    function gByteLength() constant returns(uint){
        return g.length;
    }
}

//byte定义后长度不可变，内部字节不可修改
/*bytesI(1 <= I <= 32)可以声明固定字节大小的字节数组变量，一旦声明，内部的字节和字节数组长度不可修改，当然可以通过索引读取(只读)对应索引的字节，或者通过length读取字节数组的字节数。*/
