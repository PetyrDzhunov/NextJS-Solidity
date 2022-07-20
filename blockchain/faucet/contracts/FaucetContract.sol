// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract Faucet {

	// storing all the address that have called addFunds contract function
	 
	 address[] public funders;

	receive() external payable {}

	function addFunds()  external payable{
		funders.push(msg.sender); // msg.sender recieves the sender address
	}


}

// const instance = await Faucet.deployed()	