# AnyCallV6 Test

AnyCallV6 SMPC network test to update smart contract states on seperate blockchains

## How to deploy
1. Deploy Destination.sol on FTM testnet
2. Deploy Source.sol on Rinkeby, set destinationcontract as Destination.sol deployed address on FTM testnet
3. call changeFTMState(uint256) from Source.sol

### Deployed Contracts:
FTM testnet (Destination.sol): 0x6Cc244897eb4D3742397b27Bd2072619872624CF 
Rinkeby (Source.sol): 0x0607b5871d7c3dc7025c8993430b494bcb45b64d 