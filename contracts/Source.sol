// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

interface CallProxy{
    function anyCall(
        address _to,
        bytes calldata _data,
        address _fallback,
        uint256 _toChainID,
        uint256 _flags

    ) payable external;

    function calcSrcFees(
    string calldata _appID,
    uint256 _toChainID,
    uint256 _dataLength
    ) external view returns (uint256); 
    
}

// Import this file to use console.log
import "hardhat/console.sol";

contract Source {
    // The Multichain anycall contract on rinkeby 
    address private anycallcontractrinkeby=0x273a4fFcEb31B8473D51051Ad2a2EdbB7Ac8Ce02;

    // Destination contract on Polygon
    address private receivercontract=0x3E2347a6F93eaC793C56DC508206e397eA11e83D;

    uint256 public number;
    
    event LogChangeState(uint256 amount);

    function changeFTMState(uint256 _amount) external {
        emit LogChangeState(_amount);
        CallProxy(anycallcontractrinkeby).anyCall(
            receivercontract,

            // sending the encoded bytes of the string msg and decode on the destination chain
            abi.encode(_amount),

            // 0x as fallback address because we don't have a fallback function
            address(0),

            // chainid of polygon
            4002,

            // Using 2 flag to pay fee on destination chain
            2
            );
    }
}

