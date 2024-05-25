const ethers = require("hardhat").ethers;

async function main() {
	const MyToken = await ethers.getContractFactory("MyToken");
	const initialSupply = 100000000;
	const myToken = await MyToken.deploy(initialSupply);

	console.log("MyToken deployed to:", myToken.address);
}

main()
	.then(() => process.exit(0))
	.catch((error) => {
		console.error(error);
		process.exit(1);
	});
