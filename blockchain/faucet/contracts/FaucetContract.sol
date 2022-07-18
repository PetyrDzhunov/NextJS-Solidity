// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract Faucet {
	// storage variables (data,state that can persist over time)
	uint public funds = 1000;
	int public counter = -10;
	uint32 public test = 4294967295; // 2 on 32

}