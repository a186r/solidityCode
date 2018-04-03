pragma solidity ^0.4.4;

contract Counter{
    uint count = 0;
    address owner;

    /*函数名和合约名相同时，就是构造函数，合约对象创建时，会先调用构造函数对相关数据进行初始化处理*/
    
    function Counter(){
        owner = msg.sender;
    }

/*成员函数*/
    function increment() public {
        uint step = 10;/*局部变量*/
        if(owner == msg.sender){
            count = count+step;
        }
    }

    function getCount() constant returns (uint){
        return count;
    }
/*析构函数，和构造函数对应，构造函数是为了初始化数据，析构函数是为了销毁数据，手动调用kill()时就会销毁当前合约。*/
    function kill(){
        if(owner == msg.sender){
            selfdestruct(owner);
        }
    }
}
