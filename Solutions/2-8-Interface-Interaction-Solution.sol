// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// import Student contract 
// import {Student} from "./ClassRoom.sol";



// ✅ Create IStudent inetrface
// ✅ create two functions in addSttudent and getStudent 
// ✅ Crate a Teacher contract
// ✅ Create a constructor to set the student contract by passing it as a parameter
// ✅ Create a function to call the addStudent function from the student contract
// ✅ Create a function to call the getStudent function from the student contract



interface IStudent {

    function addStudent(uint _id ,string memory _name , int _result , bool _Success) external ;
    function getStudent(uint _id) external view returns(Student.student memory);

}

contract Teatcher {


    IStudent INewStudent;






    constructor( address _NewStudent) {


        INewStudent = IStudent(_NewStudent);



    }


    function addStudent(uint _id ,string memory _name , int _result , bool _Success) external {

        // add student 
        INewStudent.addStudent(_id, _name, _result, _Success);
    }


    function getStudent(uint _id) external view returns(Student.student memory) {


        return  INewStudent.getStudent(_id);
    }
}

