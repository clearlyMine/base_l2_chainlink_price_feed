    // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract DataConsumerV3 {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Base Sepolia
     * Aggregator: ETH/USD
     * Address: 0x4aDC67696bA383F43DD60A9e78F2C97Fbbfc7cb1
     */
    constructor() {
        priceFeed = AggregatorV3Interface(0x4aDC67696bA383F43DD60A9e78F2C97Fbbfc7cb1);
    }

    function getLatestPrice() public view returns (int256) {
        (
            /* uint80 roundID */
            ,
            int256 price,
            /* uint startedAt */
            ,
            /* uint timeStamp */
            ,
            /* uint80 answeredInRound */
        ) = priceFeed.latestRoundData();
        return price;
    }
}
