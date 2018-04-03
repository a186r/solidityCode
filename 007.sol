pragma solidity ^0.4.4;

contract Person{
    int public _age;
    string public _name;

    function Person(int age,string name){
        _age = age;
        _name = name;
    }

    function f(string name){
        var name1 = name;
    }
}
