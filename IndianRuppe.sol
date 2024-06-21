// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract IndianRupee is Ownable, ERC20Burnable {
    constructor(uint256 initialSupply) ERC20("Rupees", "RS") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply);
    }

    function mintToken(address _toAddress, uint _amount) public onlyOwner {
        _mint(_toAddress, _amount);
    }

    function burnToken(uint _amount) public {
        _burn(msg.sender, _amount);
    }

    function transferToken(address _toAddress, uint _amount) public {
        bool success = transfer(_toAddress, _amount);
        assert(success);
        
    }
}
