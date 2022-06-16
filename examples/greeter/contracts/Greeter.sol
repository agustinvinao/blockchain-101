// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Greeter is Ownable{
  string _greeting = "Hello, World!";
  address _owner;

  constructor() {
    _owner = msg.sender;
  }

  // this two methods are replaced by using openzeppelin Ownable

  // modifier onlyOwner() {
  //   require(msg.sender == _owner, "Ownable: caller is not the onwer");
  //   _;
  // }
  
  // function owner() public view returns(address) {
  //   return _owner;
  // }

  function greet() external view returns(string memory) {
    return _greeting;
  }

  function setGreeting(string calldata gretting) external onlyOwner {
    _greeting = gretting;
  }
}
