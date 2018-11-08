pragma solidity ^0.4.19;

interface PizzaRegulator
{
    function checkValue(uint amount) returns (bool);   
}

contract PizzaStore is PizzaRegulator
{
    //
    uint internal registerNumber;
    uint private monthlyTaxes;
    uint private resources;
    address private owner;

    modifier ownershipCredential
    {
        require(owner == msg.sender);
        _;
    }

    function PizzaStore(uint amount)
    {
        registerNumber = 551022;
        resources = amount;
        owner = msg.sender;
    }

    function deposit(uint amount) private ownershipCredential
    {
        //
        resources += amount;
    }

    function withDraw(uint amount) private ownershipCredential
    {
        //
        if (checkValue(amount))
        {
            resources -=amount;
        }
    }

    function balance() returns (uint)
    {
        //
        return resources;
    }

    function checkValue(uint amount) returns (bool)
    {
        return resources >= amount;
    }

    function loan() returns (bool)
    {
        return resources > 0;
    }
}

contract virtualATM is PizzaStore(10000000)
{
    string private name;
    uint private age;

    function setName(string newName)
    {
        name = newName;
    }

    function setAge(uint newAge)
    {
        age = newAge;
    }
    function getAge() returns (uint)
    {
        return age;
    }
    function getName() returns (string)
    {
        return name;
    }
}