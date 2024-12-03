// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


// ✅ Create a Student Contract 
// ✅ Define a Student Struct with id, name, result, success
// ✅ Create a mapping between ID and Student
// ✅ Add array of Students 


contract Student {

    address private owner;

    struct student {

        uint id;
        string name;
        int result;
        bool success; // false < 10 < true 

    }

    student [] public students;

    mapping (uint256 ID => student) public IDtoStudent;

    constructor() {
        owner = msg.sender;

    }

}