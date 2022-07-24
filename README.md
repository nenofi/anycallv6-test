# AnyCallV6 Test

AnyCallV6 SMPC network test to update smart contract states on seperate blockchains

## How to deploy
1. Deploy Destination.sol on FTM testnet
2. Deploy Source.sol on Rinkeby, set destinationcontract as Destination.sol deployed address on FTM testnet
3. call changeFTMState(uint256) from Source.sol
