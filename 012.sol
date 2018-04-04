pragma solidity ^0.4.4;

contract StringLiterals{
    string _name;

    function StringLiterals(){
        _name = "abcdefg";
    }

    function setString(string name){
        _name = name;
    }

    function name() constant returns (string){
        return _name;
    }
}

//string字符串不能通过length来获取其长度
