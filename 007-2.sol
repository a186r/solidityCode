pragma solidity ^0.4.4;

contract Person{
    string public _name;

    function Person(){
        _name = "liyuechun";
    }

    function f(){
        midifyName(_name);
    }

    function modifyName(string name){
        var name1 = name;
        bytes(name1)[0] = 'L';
}
