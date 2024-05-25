require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
	solidity: "0.8.24",
	networks: {
		localhost: {
			url: "http://127.0.0.1:8545",
			accounts: [
				"0xde9be858da4a475276426320d5e9262ecfc3ba460bfac56360bfa6c4c28b4ee0",
			],
		},
	},
};
