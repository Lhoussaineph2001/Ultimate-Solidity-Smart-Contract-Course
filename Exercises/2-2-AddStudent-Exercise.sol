// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Create a function to add Student 
// 2️⃣ Add the struct to array
// 3️⃣ Add Student to mapping
// 4️⃣ Create a function to get Student by ID


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


    //  Create a function to add Student

    // Create a function to get Student by ID

}