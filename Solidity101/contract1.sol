pragma solidity ^0.4.0;

contract contract1 {
    // encapsulation
    string private name;
    uint private age;

    // getters and setters
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
}
