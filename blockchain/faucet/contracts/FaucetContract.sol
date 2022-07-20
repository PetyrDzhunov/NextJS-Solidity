// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract Faucet {

	// storing all the address that have called addFunds contract function
	 
	 address[] public funders;

	receive() external payable {}

	function addFunds()  external payable{
		funders.push(msg.sender); // msg.sender recieves the sender address
	}

	function getAllFunders() public view returns(address[] memory) {
		return funders;
	}


	function getFunderAtIndex(uint8 index) external view returns(address) { 
		address[] memory _funders = getAllFunders(); 
		return _funders[index];
	}
}

// const instance = await Faucet.deployed()	
//instance.addFunds({from:accounts[0],value:"2"})