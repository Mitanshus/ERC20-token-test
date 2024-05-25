// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract MyToken is ERC20,AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    uint256 public constant MAX_SUPPLY = 60000000; // 60 million tokens with 18 decimal places
   
    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
        require(initialSupply <= MAX_SUPPLY, "Initial supply exceeds maximum supply");

        _grantRole(MINTER_ROLE, msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _mint(msg.sender, initialSupply);
    }

  function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
        
        _mint(to, amount);
    }
}