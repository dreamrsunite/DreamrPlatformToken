// SPDX-License-Identifier: MIT

pragma solidity 0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/ownership/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";



contract DreamrPlatformToken is ERC20, ERC20Detailed, Ownable {

  uint8 private constant DECIMALS = 18;
  uint256 private constant INITIAL_SUPPLY = 210000000 * (10 ** uint256(DECIMALS));

   /**
    * @dev Constructor that gives msg.sender all of existing tokens.
    */
   constructor() public ERC20Detailed("Dreamr Platform Token", "DMR", DECIMALS) {
       _mint(msg.sender, INITIAL_SUPPLY);
   }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public onlyOwner {
        _burn(account, amount);
    }


}
