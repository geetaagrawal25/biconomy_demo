// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

// import "hardhat/console.sol";
import './IERC721A.sol';
import './ERC721A.sol';
import "@opengsn/contracts/src/ERC2771Recipient.sol";
//import "@opengsn/gsn/contracts/BaseRelayRecipient.sol";

contract MyToken is ERC721A, ERC2771Recipient {

    //Used Goerli Trusted Forwarder 0xE041608922d06a4F26C0d4c27d8bCD01daf1f792
    address private _trustedForwarder;
    constructor (string memory name_, string memory symbol_, address forwarder_) 
    ERC721A(name_, symbol_)  {
    _setTrustedForwarder(forwarder_);
    }

    
    function mint(address, uint256 quantity) external {
        _mint(_msgSender(),quantity);
    }

    
}
