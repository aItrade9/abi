# Withdrawal Functions ABI and Usage Guide

This document provides the ABI for the withdrawal functions in the DeFi Contract and instructions on how to use them in Remix.

## Contract Address
```
0x9078f1816cc276a5e7d80accf109dfee5b97eb76
```

## ABI Specification

The following is the ABI for the withdrawal functions:

```json
[
  {
    "inputs": [],
    "name": "withdrawYield",
    "outputs": [
      {
        "internalType": "uint256",
        "name": "",
        "type": "uint256"
      }
    ],
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "inputs": [],
    "name": "withdrawFull",
    "outputs": [
      {
        "internalType": "uint256",
        "name": "",
        "type": "uint256"
      }
    ],
    "stateMutability": "nonpayable",
    "type": "function"
  }
]
```

## Using the Withdrawal Functions in Remix

### Setup in Remix

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Create a new file named `IWithdrawalFunctions.sol` and paste the following code:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IWithdrawalFunctions {
    function withdrawYield(uint256) external returns (uint256);
    function withdrawFull(uint256) external returns (uint256);
}
```

### Interacting with an Existing Contract

1. Compile the interface
   - Go to the "Solidity Compiler" tab
   - Select Compiler version 0.8.20
   - Click "Compile IWithdrawalFunctions.sol"

2. Deploy & Run Transactions
   - Go to the "Deploy & Run Transactions" tab
   - Set the environment to "Injected Provider - MetaMask" (or another web3 wallet)
   - Ensure you're connected to BSC network
   - Under "At Address", paste the address of the deployed DeFi Contract: 0x303c0CA64bE04600DC892CbDA1E8C7E1E987Fa24
   - Click "At Address" to load the contract interface

3. Using the Functions

#### Withdraw Principal 

This function withdraws your entire investment, including principal, yield, and referral rewards.

- Locate the "withdrawFull" function in the deployed contract interface
- Please enter the amount of your investment and convert it to ether. For example, 1 USDC should be 100000000000000, with 18 zeros after 1
- Click the button to execute the transaction
- Confirm the transaction in your wallet
- Note: A withdrawal fee will be applied to the principal amount
- The function returns the amount transferred to your wallet after fees

#### Withdraw Yield

This function allows you to withdraw accumulated yield and referral rewards without touching your principal investment.

- Locate the "withdrawYield" function in the deployed contract interface
- Please enter the amount of your yield and convert it to ether. For example, 1 USDC should be 100000000000000, with 18 zeros after 1
- Click the button to execute the transaction
- Confirm the transaction in your wallet
- The function returns the total amount withdrawn

### Error Handling

Common errors you might encounter:

- "Insufficient yield balance": You don't have any yield to withdraw
- "Insufficient investment balance": You don't have any investment to withdraw

### Gas Optimization

- All withdrawal functions involve multiple operations including interactions with AAVE
- Ensure you have enough BNB for gas fees
- Consider executing transactions during periods of lower network congestion for reduced gas costs 
