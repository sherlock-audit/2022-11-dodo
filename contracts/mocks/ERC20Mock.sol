// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract ERC20Mock is ERC20 {
    using SafeERC20 for ERC20;

    // Decimals are set to 18 by default in `ERC20`
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, type(uint256).max);
    }
}