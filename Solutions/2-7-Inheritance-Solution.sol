
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// import Student contract 
// import {Student} from "./ClassRoom.sol";



// ✅ Create Parent Contract
// ✅ Inherit Student Contract from ClaassRoom USE IS keyword	
// ✅ Create a function to check if the student is successful or not



contract Parents is Student{ 



    

    function CheckSuccessForStudent(uint _id) public view returns(bool , int) {

        student memory OurStudent = IDtoStudent[_id];

        return (OurStudent.success , OurStudent.result);

    }

}