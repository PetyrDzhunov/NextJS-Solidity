// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Storage {

	mapping(uint => uint) public aa; // slot 0
	mapping(address => uint) public bb; // slot 1
	uint[] public cc; // slot 2

	uint8 public a = 7; //1 byte
	uint16 public b = 10; // 2 bytes
	address public c = 0x32dd689FF9F1Bf3A3D2D07f498474d9F075C5A9f; //20 bytes
	bool d = true; // 1 byte
	uint64 public e = 15; // 8bytes
	// all those will take 32 bytes and will be stored in slot 3

	uint256 public f = 200; // 32 bytes // slot 4

	uint8 public g = 40; // 1byte // slot 5

	uint256 public h = 789; // 32 bytes // slot 6

	constructor() {
		cc.push(1);
		cc.push(100);
		cc.push(10);
			aa[2] = 4;
			aa[3] = 10;
			bb[0x32dd689FF9F1Bf3A3D2D07f498474d9F075C5A9f] = 100;
	}

}

//0x0000000000000000000000000000000000000000000000000000000000000002 // thats the key of the mapping 2
// 0x0000000000000000000000000000000000000000000000000000000000000000 // thats the slot 0 of the contract
// combined together they create 64bytes -
// 00000000000000000000000032dd689FF9F1Bf3A3D2D07f498474d9F075C5A9f0000000000000000000000000000000000000000000000000000000000000001
// then go to keccak256 and provide this hexadecimal number to transform it and it returns the alocation of our mapping -
//abbb5caa7dda850e60932de0934eb1f9d0f59695050f761dc64e443e5030a569 - alocation of our mapping with a 0x in front to say its a hexadecimal num

// 0x0000000000000000000000000000000000000000000000000000000000000002

