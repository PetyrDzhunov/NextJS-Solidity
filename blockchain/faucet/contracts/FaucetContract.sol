// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract Faucet {

	// storing all the address that have called addFunds contract function
	uint public numOfFunders;
	mapping(uint => address)public funders;

	receive() external payable {}

	function addFunds()  external payable{
		uint index = numOfFunders++;
		funders[index] = msg.sender;
		// funders.push(msg.sender); // msg.sender recieves the sender address
	}

	// function getAllFunders() public view returns(address[] memory) {
	// 	return funders;
	// }

	function getAllFunders() external view returns(address[] memory) {
		 	address[] memory _funders = new address[](numOfFunders);
			for (uint i=0; i<numOfFunders; i++) {
				_funders[i] = funders[i];
			} 
			return _funders;
	}	


	function getFunderAtIndex(uint8 index) external view returns(address) { 
		return funders[index];
	}
}

//const instace = await Faucet.deployed();
// istance.addFunds({from:accounts[0],value:"200000000000000"})
// istace.addFunds({from:accounts[1],value:"200000000000000"})
// instace.getFunderAtIndex("0")