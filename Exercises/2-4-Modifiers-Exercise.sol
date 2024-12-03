// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;



// 1️⃣ Create a function to delete a  Student 
// 2️⃣ Create OnlyOwner modifier 
// 3️⃣ Implement the modifier to allow only the owner to call the function

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

    // Create a modifier to allow only the owner to call the function


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

    // Create a function to delete a  Student
    // Implement the modifier to allow only the owner to delete function

}