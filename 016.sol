pragma solidity ^0.4.4;

contract C{
    //定义一个数组长度为5，数组中存储的数据类型为uint的数组T
    uint [5] T = [1,2,3,4,5];

    //通过for循环计算数组内部的值的总和
    function numbers() constant public returns (uint){
        uint num = 0;
        for(uint i = 0;i < T.length;i++){
            num = num + T[i];
        }
        return num;
    }

    //尝试修改长度
    function setTLength(uint len) public {
        T.length = len;
    }

    //尝试修改T数组内部值

    function setTIndex0Value() public {
        T[0] = 10;
    }

    //通过for循环计算数组内部的值的总和
    function number() constant public returns(uint) {
        uint num = 0;
        for(uint i = 0; i < T.length;i++){
            num = num + T[i];
        }
        return num;
    }
}

//尝试通过push往T数组中添加值
contract C{
    uint [5] T = [1,2,3,4,5];
    function pushUintToT() public {
        T.push(6);
    }
}
/*固定大小的数组不能调用push方法向里面添加存储内容，声明一个固定长度的数组，比如：uint[5] T,数组里面的默认值为[0,0,0,0,0],我们可以通过索引修改里面的值，但是不可修改数组长度以及不可通过push添加存储内容。*/

//可变长度类型数组的声明

contract C {
    uint [] T = [1,2,3,4,5];
    function T_Length() constant returns (uint){
        return T.length;
    }
}

//通过length方法获取数组长度遍历数组求总和
contract C {
    uint [] T = [1,2,3,4,5];

    //通过for循环计算数组内部的值的总和
    function numbers() constant public returns (uint){
        uint num = 0;
        for(uint i = 0;i < T.length;i++){
            num = num + T[i];
        }

        return num;
    }
}

//创建一个长度为length的memory类型的数组可以通过new关键字来创建。memory数组一旦创建，它不可通过length修改其长度。
contract C{
    function f(uint len){
        uint[] memory a = new uint[](7);
        bytes memory b = new bytes(len);

        a[6] = 8;
    }
}
