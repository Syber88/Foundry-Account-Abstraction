
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {MinimalAccount} from "../src/ethereum/MinimalAccount.sol";

contract HelperConfig is Script {
    error HelperConfig__InvalidCahinId();

    struct NetworkConfig {
        address entryPoint;
    }

    uint256 constant ETH_SEPOLIA_CHAIN_ID = 11155111;
    uint256 constant ZKSYNC = 300;

    NetworkConfig public localNetworkConfig;
    mapping(uint256 chainId => NetworkConfig) public networkConfigs;

    constructor( ){
        networkConfigs[ETH_SEPOLIA_CHAIN_ID] = getEthSepoliaConfig();
    } 

function getEthSepoliaConfig() public pure returns (NetworkConfig memory) {
    return NetworkConfig({entryPoint: })
}

}