pragma solidity ^0.4.4;

contract Math{
    function mul(int a,int b) constant returns (int) {
        int c = a * b;
        return c;
    }

    function div(int a , int b) constant returns (int) {
        int c = a/b;
        return c;
    }

    function sub(int a,int b) constant returns (int){
        int c = a - b;
        return c;
    }

    function add(int a, int b) constant returns (int) {
        int c = a + b;
        return c;
    }
}
//求余
contract MathS{
    function m(int a,int b) constant returns (int) {
        int c = a % b;
        return c;
    }
}

//次方运算
contract MathD{
    function (int a,int b) constant returns (int) {
        int c = a ** b ;
        return c;
    }
}

//与或非异或运算

contract MathOther{
    function yu() constant returns (int) {
        uint a = 3;
        uint b = 4;
        uint c = a & b;
        return c;
    }

    function huo() constant returns (uint){
        uint a = 3;
        uint b = 4;
        uint c = a | b;
        return c;
    }

    function fei() constant returns (uint8){
        uint8 a = 3;
        uint8 c = ~a;
        return c;
    }

    function yihuo() constant returns (uint){
        uint a = 3;
        uint b = 4;
        uint c = a ^ b;
        return c;
    }
}

//位移运算

contract MathWeiYi{
    function leftShift() constant returns (uint8){
        uint8 a = 8;
        uint8 c = a << 2;
        return c;
    }

    function rightShift constant returns (uint8){
        uint8 a = 8;
        uint8 c = a >> 2;
        return c;
    }
}
