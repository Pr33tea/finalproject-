// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    //  variables 
   string public tokenName = "EROS";
   string public tokenabbrv = "ERS";
   uint public totalSupply = 0;

    // mapping the variables
    mapping (address => uint ) public balances; 

    // minting functions
   function mint (address _address, uint _value) public {
    totalSupply += _value;
    balances[_address] += _value;
   }

    // burning functions
   function burn (address _address, uint _value) public {
      if (balances[_address] >= _value){
         totalSupply -= _value;
          balances[_address] -= _value;
      }
   }
}