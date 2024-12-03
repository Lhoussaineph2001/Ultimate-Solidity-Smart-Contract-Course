// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


// 1️⃣ Create an event with 4 arguments (id, name, result, success) call "StudentAdded" 
// 2️⃣ emit the event in the addStudent function
// 3️⃣ Create an event with 2 arguments (id, name) call "StudentDeleted" 
// 4️⃣ emit the event in the deleteStudent function


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

    // create an event with 4 arguments (id, name, result, success) call "StudentAdded"
    // create an event with 2 arguments (id, name) call "StudentDeleted"


    modifier OnlyOwner() {

        require(owner == msg.sender , " Only Owner can delete a Student");
        
    _;

    }


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

        //  emit the event in the addStudent function

    }



    function getStudent(uint _id) external view returns (student memory) {
        return IDtoStudent[_id];
    }
    

    function getSuccessStudent() external view returns(student[] memory) {

        uint256 lenght = students.length;
        
    
        uint256 Count = 0;
    
        // Create a local array to store success students
    
        for (uint i=0 ; i < lenght ; i++) {
    
    
            if (students[i].success == true){
    
                Count++; 
            }
    
            
        }
    
        student [] memory SuccessStudents = new student[](Count);
        
        // Now, push the successful students into your local array
        for (uint j=0; j<Count; j++){
    
    
            if (students[j].success == true ) { // if the condition is true)
    
               SuccessStudents[j] = students[j];
          
             } 
    
        }
    
        return SuccessStudents;
    
    }

    function deleteStudent(uint _id) external OnlyOwner {

        uint256 length = students.length;
        string memory studentName;
    
        for (uint i = 0; i < length; i++) {
    
            if (students[i].id == _id) {
    
                // Save the student's name before deletion
                studentName = students[i].name;
    
                // Remove the student from the array
                students[i] = students[length - 1]; // Move the last element to the current index
    
                students.pop(); // Remove the last element to shrink the array
    
                // Remove from the mapping
                delete IDtoStudent[_id];
        
                // emit the event in the deleteStudent function


                return; // Exit the function after deleting
            }
        }


    }

}