/*因为string是特殊的动态字节数组，所以string只能和动态大小字节数组(Dynamically-sized byte array)之间进行转换，不能和固定大小字节数组进行转换。*/

pragma solidity ^0.4.4;

contract C {
    bytes names = new bytes(2);

    function C(){
        names[0] = 0x6c;
        names[1] = 0x69;
    }

    function namesToString() constant returns (string) {
        return string(names);
    }
}

//如果是固定大小字节数组转string，那么就要先将字节数组转动态字节数组再转字符串

contract CC{

    function byte32ToString(byte32 byt) constant returns (string){
        bytes memory names = new bytes(byt.length);

        for(uint i = 0; i < byt.length ; i ++){
            names[i] = byt[i];
        }

        return string(names);
    }

}
