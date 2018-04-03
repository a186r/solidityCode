pragma solidity ^0.4.4;
contract Person{
    int public _age;

    function Person(int age){
        _age = age;
    }

    function f(){
        midifyAge(_age);
    }

    function midifyAge(int age){
        age = 100;
    }
}
