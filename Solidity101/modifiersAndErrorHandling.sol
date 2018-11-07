pragma solidity ^0.4.0;

// interfaces in solodity
interface Regulator
{
    // check if we have enough founds
    function checkValue(uint amount) returns (bool);
}

// a contract in this case is a class
// in solidity classes does not exists anymore
// instead we have contracts

// Back is inherit from Regulator interface
contract Bank is Regulator
{
    // cant be access from outside, just for
    // bank itself and children
    uint internal myInternalValue;
    // cant be accessed from children
    uint private value;
    // addresses
    // this will be the owner of the contract
    address private owner;

    modifier ownerFunc
    {
        // owner base functionality
        require(owner == msg.sender);
        _; // to be able to execute this function
    }



    //constructors
    function Bank(uint amount)
    {
        // will be called just once
        value = amount;
        owner = msg.sender;
    }

    // set the ownerFunc
    // which means no one except the owner of the contract can
    // access these functions
    function deposit(uint amount) internal ownerFunc
    {
        value += amount;
    }

    function withDraw(uint amount) private ownerFunc
    {
        if(checkValue(amount))
        {
            value -= amount;
        }
    }

    function balance() returns (uint)
    {
        return value;
    }

    // like a virtual function
    // or a abstract function that can be implemented in
    // children
    //function loan() returns (bool);

    function checkValue(uint amount) returns (bool)
    {
        // check deposit
        return value >= amount;
    }

    function loan() returns (bool)
    {
        return value > 0;
    }
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

}

// Error handling
contract TestThrows
{
    function testAssert()
    {
        //
        assert(1 == 2);
    }

    function testRequire()
    {
        // parameter requirement
        require(2 == 1);
    }

    function testRevert()
    {
        // should revert the gas consumption
        // we use in a message
        revert();
    }
    function testThrow()
    {
        // this comsumes all the gas
        throw; // actually it is deprecated
    }

}