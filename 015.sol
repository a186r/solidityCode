pragma solidity ^0.4.4;

contract C {
    bytes9 name9 = 0x6c69687657659686;
    
    function fixedSizeByteArraysT constant returns (bytes) {
        bytes memory names = new bytes(name9.length);
        for(uint i = 0;i < name9.length; i++){
            names[i] = name9[i];
        }

        return names;
    }


}

/*在上面的代码中，我们根据固定字节大小数组的长度来创建一个memory类型的动态类型的字节数组，然后通过一个for循环将固定大小字节数组中的字节按照索引赋给动态大小字节数组即可。*/
