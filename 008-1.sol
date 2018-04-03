//internal类型的状态变量可供外部和子合约调用
//internal类型的函数和private类型的函数一样，智能合约自己内部调用，它和其他语言中的protected不完全一样。

pragma solidity ^0.4.4;

contract Animal{
    string _birthDay;
    int public _age;
    int internal _weight;
    string private _name;

    function Animal(){
        _age = 29;
        _weight = 170;
        _name = "HuanHuan"
        _birthDay = "2012-06-08"
    }

    function birthDay() constant returns (string){
        return _birthDay;
    }

    function age() constant public returns (int){
        return _age;
    }

    function name() constant internal returns (string) {
        returns _name;
    }

    function height() constant private returns (string) {
        returns _weight;
    }
}

contract Person is Animal{
    function Person(){
        _age = 50;
        _weight = 270;
        _birthDay = "2017-02-03";
    }
}

