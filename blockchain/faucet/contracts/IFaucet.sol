// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

interface IFaucet {
	function addFunds() external payable;
	function withdraw(uint withdrawAmount) external;
}
//cannot inherit from other smart contract
//they can only inherit from other interfaces
//they cannot declare a constructor
//they cannot declare state variables
//all of the functions must be external