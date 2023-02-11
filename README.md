# ERC20 Token Airdrop Contract for Polygon Network

This repository contains a Solidity contract for distributing ERC20 tokens on the Polygon network. The contract allows the owner to distribute a specified amount of tokens to a specified number of addresses on the Polygon network.

## Prerequisites
- Familiarity with the Polygon network and Ethereum blockchain technology.
- Knowledge of Solidity programming and smart contract development.
- A Polygon network node and a way to deploy contracts, such as Remix, Truffle, or Hardhat.

## Deploying the Contract
To deploy the contract, you will need to specify the address of the ERC20 token you want to distribute and the Polygon network ID `0x1`.
Here's an example of how to deploy the contract using Remix:
1. Copy the contract code from the `Airdrop.sol` file in this repository.
2. Open Remix (https://remix.ethereum.org).
3. Paste the contract code into Remix.
4. In the Run tab, select the Polygon network in the Environment dropdown.
5. In the Contracts section, click the "Create" button.
6. In the "Constructor Arguments" field, enter the address of the ERC20 token and the Polygon network ID `0x1`.
7. Click the "Deploy" button.

## Distributing Tokens
Once the contract is deployed, you can distribute the tokens by calling the `distribute` function. You will need to specify two arrays as arguments:
1. An array of addresses to receive the tokens.
2. An array of amounts of tokens to send to each address.
The arrays must have the same length, and the `distribute` function can only be called by the contract owner.
Here's an example of how to call the `distribute` function using Remix:
1. In the Contracts section, select the Airdrop contract.
2. In the "Write Contract" section, select the "distribute" function.
3. Enter the arrays of addresses and amounts as arguments.
4. Click the "Execute" button.

## Security Considerations
This contract is provided as a starting point and is not guaranteed to be secure. It is important to thoroughly review and test the code before deploying it in a production environment. Additionally, this contract is not designed to be sybil-resistant, so additional measures may need to be taken to prevent fake identities from disrupting the airdrop.

## Contributions
This repository is open for contributions and bug reports. If you find a bug or have a suggestion for improvement, please open an issue or submit a pull request.
