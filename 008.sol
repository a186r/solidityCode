//public 类型的状态变量和函数的权限最大，可供外部、子合约、合约内部访问

pragma solidity ^0.4.4;

contract Animal{
    string _birthDay;
    int public _age;
    int internal _weight;
    string private _name;
    
    function Animal(){
        _age = 20;
        _weight = 170;
        _name = "Lucky dog";
        _birthDay = "2012-01-02"
    }

    function birthDay() constant returns (string) {
        return _birthDay;
    }

    function age() constant public returns (int) {
        return _age;
    }

    function height() constant internal returns (int) {
        return _weight;
    }

    function name() constant private returns (string) {
        return _name;
    }
}

//这个合约中外部可以调用三个函数，age/_age/birthDay 为什么可以调用_age，因为_age是public的，会自动生成一个和状态变量同名的get函数。
//函数默认是public类型，状态变量默认是internal类型

