pragma solidity ^0.4.4;

contract Students{
    struct Person{
        uint age;
        uint stuId;
        string name;
    }

//初始化一个storage类型的状态变量
    Person _person = Person(18,101,"xxx");
//or
    Person _person2 = Person({age:18,stuId:101,name:"xxx"})
}

//初始化一个memory类型的变量

contract Students{
    struct Person{
        uint age;
        uint stuId;
        string name;
    }

    function personInit(){
        Person memory person = Person({age:18,stuId:101,name:"xxx"});
    }
}
