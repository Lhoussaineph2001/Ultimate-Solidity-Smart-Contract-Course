// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// ✅  Create  a function for get the success studnets
// ✅  Use if condition to check if the student is success or not
// ✅  Use a loop to check if the student is success or not


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


}