pragma solidity ^0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

contract Airdrop {
    ERC20 public token;
    address public owner;

    constructor(address _tokenAddress, uint256 _networkId) public {
        require(_networkId == 0x1, "This contract is for Polygon network only");
        token = ERC20(_tokenAddress);
        owner = msg.sender;
    }

    function distribute(address[] memory addresses, uint256[] memory amounts) public onlyOwner {
        require(addresses.length == amounts.length, "Addresses and amounts arrays should have equal length");
        uint256 i;
        for (i = 0; i < addresses.length; i++) {
            require(token.transfer(addresses[i], amounts[i]), "Transfer failed");
        }
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }
}
