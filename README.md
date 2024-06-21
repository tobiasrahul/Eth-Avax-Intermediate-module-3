# Creating ERC20 Token
In this project of module 3 of course ETH + AVAX PROOF: Intermediate EVM Course, we are creating our own ERC20 token. The contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens. This project is deployed on Remix IDE.

# Introduction
The ERC-20 introduces a standard for Fungible Tokens, in other words they have a property that makes each Token be exactly the same (in type and value) as another Token. 
For example, an ERC-20 Token acts just like ETH, meaning that 1 Token is and will always be equal to all the other Tokens.

Example functionalities ERC-20 provide are to:
* transfer tokens from one account to another
* get the current token balance of an account
* get the total supply of the token available on the network
* approve whether an amount of token from an account can be spent by a third-party account


# Explaination
In this smart contract we imported three files:
* import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
* import "@openzeppelin/contracts/access/Ownable.sol";
* import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

These are used to include specific functionalities and features from the OpenZeppelin library into your Solidity smart contract. 

I have created three functions:
* mintToken : It is used to mint the tokens in the user account
* burnToken : It is used to burn the tokens.
* transferToken : It is used to transfer the tokens to any other account.

Here the mintToken function is only used by the owner whereas the burnToken and transferToken can be used by anyuser including owner itself.


# Executing Program
1. Open [Remix IDE](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.26+commit.8a97fa7a.js) in your browser and click on "start coding" button.
2. You can copy the code or download the IndianRuppee.sol file from this repo.
3. Compile the code form left side tool bar and then deploy it.
4. Pass the initial value (intial tokens) and then deploy the contract. Then you can use all the functions like mint, burn and transfer token.

# Help
1. Insure that the correct version of complier is written in your contract or set from "compile" button from left side tool bar.
   ```
   pragma solidity ^0.8.20;
   ```
2. Insure to import the files for ERC20 token:
   ```
   import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
   import "@openzeppelin/contracts/access/Ownable.sol";
   import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
   ```
3. Ensure that you have passed MIT License in your contract otherwise the complier will show error.
   ```
   // SPDX-License-Identifier: MIT
   ```

# Author
Rahul Berwal <br />
[tobiasrahul](https://github.com/tobiasrahul)

# License
This project is licensed under the MIT License - see the LICENSE.md file for details
