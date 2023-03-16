// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "solmate/tokens/ERC20.sol";

contract GLDTokenB is ERC20 {
    address public owner;

    constructor(uint256 initialSupply) ERC20("Gold B", "GLD_B", 18) {
        owner = msg.sender;
        _mint(owner, initialSupply);
    }

    function mintTo(address to, uint256 amout) public virtual {
        _mint(to, amout);
    }

    function burnFrom(address from, uint256 amout) public virtual {
        _burn(from, amout);
    }
}
