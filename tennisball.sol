// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Tennisball {

    string public balltype = "Tennis Ball";
    string public Ballcode = "TB";
    uint public No_of_balls = 0;
    mapping(address => uint) public blc;

    function addition(address _address, uint _units) public {
        No_of_balls += blc[_address];
        require(_units > 0, "balls must be greater than 0");
        No_of_balls += _units;
        blc[_address] += _units;
        assert(blc[_address] == No_of_balls);
        No_of_balls = 0;
    }

    function subtraction(address _address, uint _units) public {
        No_of_balls += blc[_address];
        if (No_of_balls < _units) {
            revert("Not enough balls to subtract");
        }
        No_of_balls -= _units;
        blc[_address] -= _units;
        assert(blc[_address] == No_of_balls);
        No_of_balls = 0;
    }
}
