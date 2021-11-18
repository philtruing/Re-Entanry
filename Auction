// SPDX-License-Identifier: GPL-3.0

pragma solidity  <0.9.0;

contract Auction{
    
    address public currentLeader;
    uint256 public highestBid;
    
    function bid() public payable{
        require(msg.value > highestBid);
        require(currentLeader.send(highestBid));
        currentLeader = msg.sender;
        highestBid = msg.value;
    }
}
