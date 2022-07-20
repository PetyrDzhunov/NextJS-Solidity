// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract Faucet {
	// special function
	// it's called when you make a transaction (tx) that doesn't
	// specify function name to call

	//External functions are part of the Contract interface
	//which means they can be called via contracts and other
	// transactions 

	receive() external payable {}

	function addFunds()  external payable{

	}

}