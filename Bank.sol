// SPDX-License-Identifier: GPL-3.0

pragma solidity  <0.9.0;

contract Bank{
    
    mapping(address=>uint) userBalances;
    
    function Bank() payable{
        uint a = 1;
    }
    
    function getUserBalances(address user) public returns(uint){
        return userBalances[user];
    }
    
    function addToBalance() public payable{
        userBalances[msg.sender] += msg.value; 
    }
    
    function withdrawBalance() public{
        uint amountToWithdraw = userBalances[msg.sender];
        if(msg.sender.call.value(amountToWithdraw)() == false){
            throw;
        }
        userBalances[msg.sender] = 0;
    }
}
