// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 0. Make a contract called Calculator ✅
// 1. Create Result variable to store result ✅
// 2. Create functions to add, sub, and mul to result ✅
// 3. Create a function to get result ✅


contract Calculator {

    // variable for storing result
    uint256 private result;

    


    // function to add  number to result
    function add(uint a) public {

        result +=a;
    }

    // function to subtract number from result
    function sub(uint a) public {


        result -=a;


    }

    // function to multiply a number to result
    function mul(uint a) public {

        result *=a;
        
    }

    // function to get result
    function get() public view returns(uint256) {

        return result;
    }


}

