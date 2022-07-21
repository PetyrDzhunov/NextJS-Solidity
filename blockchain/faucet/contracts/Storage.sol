// SPDX-License-Identifier: MIT
pragma solidity >=0.4.17 <0.9.0;

contract Storage {
	uint8 public a = 7; //1 byte
	uint16 public b = 10; // 2 bytes
	address public c = 0x32dd689FF9F1Bf3A3D2D07f498474d9F075C5A9f; //20 bytes
	bool d = true; // 1 byte
	uint64 public e = 15; // 8bytes
	// all those will take 32 bytes and will be stored in slot 0
	//0x 0f 01 32dd689ff9f1bf3a3d2d07f498474d9f075c5a9f 000a 07

	uint256 public f = 200; // 32 bytes // slot 1

	uint8 public g = 40; // 1byte // slot 2

	uint256 public h = 789; // 32 bytes // slot 3

}