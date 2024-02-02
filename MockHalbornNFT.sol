// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts-upgradeable/contracts/token/ERC721/ERC721Upgradeable.sol";

contract MockHalbornNFT is ERC721Upgradeable {
    function initialize() public initializer {
        __ERC721_init("MockHalborn NFT", "MHNFT");
    }

    function ownerOf(uint256 tokenId) public view override returns (address) {
        // Mock ownerOf implementation
        // In a real mock, you might use a mapping to track ownership for testing
        return super.ownerOf(tokenId);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) public override {
        // Mock safeTransferFrom implementation
        // In your tests, you will want to ensure this action succeeds as expected
        super.safeTransferFrom(from, to, tokenId, _data);
    }

    function mint(address to, uint256 tokenId) public {
        // Public mint function for test setup purposes
        // Not a standard ERC721 function, just for testing
        _safeMint(to, tokenId, "");
    }
}
