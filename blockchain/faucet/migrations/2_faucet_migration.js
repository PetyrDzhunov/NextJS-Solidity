const FaucetContract = artifacts.require('Faucet');

module.exports = function (deployer) {
  deployer.deploy(FaucetContract);
};

// 0x fdacd576 0000000000000000000000000000000000000000000000000000000000000002
// 0x = prefix to say that the number is hexadecimal
// fdac576 = call the setCompleted function from the Migrations.sol (the 1ts 4 bytes is the function signature hashed)
// 00000.. 2 = 32bytes(64 chars) ending with 2 = the argument to pass to the function
