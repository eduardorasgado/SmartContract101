pragma solidity ^0.4.0;

// a contract in this case is a class
// in solidity classes does not exists anymore
// instead we have contracts
contract Bank
{
    // cant be access from outside, just for
    // bank itself and children
    uint internal myInternalValue;
    // cant be accessed from children
    uint private value;

    //constructors
    function Bank(uint amount)
    {
        value = amount;
    }

    function deposit(uint amount)
    {
        value += amount;
    }

    function withDraw(uint amount)
    {
        value -= amount;
    }

    function balance() returns (uint)
    {
        return value;
    }

    // like a virtual function
    // or a abstract function that can be implemented in
    // children
    function loan() returns (bool);
}

// we can set a value at the moment of initialize the bank object that
// this class inherit
contract contractLevelOne is Bank(10) {
    // encapsulation
    string private name;
    uint private age;

    function setName(string newName)
    {
        name = newName;
    }
    function getName() returns (string)
    {
        return name;
    }

    function setAge(uint newAge)
    {
        age = newAge;
    }
    function getAge() returns (uint)
    {
        return age;
    }

    // functions from bank(father contract)
    function loan() returns (bool)
    {
        return true;
    }
}
