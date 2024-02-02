// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20Upgradeable} from "openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import {Initializable} from "openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";


contract MockHalbornToken is ERC20Upgradeable {

   
    function initialize() public initializer {
        __ERC20_init("MockHalborn Token", "MHBT");
    }
    
    function mintToken(address to, uint256 amount) public {
        // For testing, we allow anyone to mint tokens to simplify setup
        _mint(to, amount);
    }
    
    // You might also require a burn function to test loan repayments
    function burnToken(address from, uint256 amount) public {
        // Ensure there's a balance to burn for testing
        require(balanceOf(from) >= amount, "Not enough balance to burn");
        _burn(from, amount);
    }
}