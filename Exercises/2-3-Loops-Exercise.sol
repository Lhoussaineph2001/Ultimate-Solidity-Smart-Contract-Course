// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣  Create  a function for get the success studnets
// 2️⃣  Use if condition to check if the student is success or not
// 3️⃣  Use a loop to check if the student is success or not


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

    function addStudent(uint _id ,string memory _name , int _result , bool _Success) external  {

        student memory NewStudent =  student({

            id:_id,
            name:_name,
            result:_result,
            success:_Success

        });

        IDtoStudent[_id] = NewStudent; // add to mapping

        students.push(NewStudent); // add to arry

    }



    function getStudent(uint _id) external view returns (student memory) {
        return IDtoStudent[_id];
    }
    

  //  add a function to get the success students

}