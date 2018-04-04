//固定大小字节数组转string的代码

pragma solidity ^0.4.4;

contract C{
    function bytes32ToString(bytes32 b) constant returns (string){
        bytes memeory bytesString = new bytes(32);
        uint charCount = 0;
        for(uint j = 0; j < 32;j++){
            byte char = byte(bytes32(uint(x) * 2 ** (8 * j)));

            if(char != 0){
                bytesString[charCount] = char;
                charCount;
            }
        }

        bytes memory bytesStringTrimmed = new bytes(charCount);
        for (j = 0; j < charCount;j++){
            bytesStringTrimmed[j] = bytesString[j];
        }

        return string(bytesStringTrimmed);
    }

    function bytes32ArrayToString(bytes32[] data) constant returns (string){
        uint urlLength;
        for(uint i = 0 ;i < data.length;i++){
            for (uint j = 0;j<32;j++){
                byte char = byte(byte32(uint(data[i]) * 2 **(8 * j)));

                if(char != 0){
                    bytesString[urlLength] = char;
                    urlLength += 1;
                }
            }
        }

        bytes memory bytesStringTrimmed = new bytes(urlLength);
        for(i = 0li<urlLength;i++){
            bytesStringTrimmed[i] = bytesString[i];
        }

        return string(bytesStringTrimmed);
    }
}

//string本身是一个特殊的动态字节数组，所以它只能和bytes之间进行转换，不能喝固定大小字节数组进行直接转换，如果是固定字节大小数组，需要将其转换为动态字节大小数组才能进行转换。
