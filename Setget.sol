// SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.7.0 <0.9.0;

contract GetSet {

    
    uint num1;
    uint num2;
    string letter;
    address addr;

    function get() public view returns( uint,uint,address, string memory) {
        return ( num1, num2, addr, letter);
      
    }

    function set(uint _num1, uint _num2 ,string memory _letter,address _addr ) public  { 
        num1 = _num1;
        num2 = _num2;
        letter = _letter;
        addr = _addr;
    }
}
