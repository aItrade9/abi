// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IWithdrawalFunctions
 */
interface IWithdrawalFunctions {
    /**
     * @notice Withdraw full amount
     */
    function withdrawFull(uint256) external returns (uint256);

    /**
     * @notice Withdraw yield
     */
    function withdrawYield(uint256) external returns (uint256);
    
} 
