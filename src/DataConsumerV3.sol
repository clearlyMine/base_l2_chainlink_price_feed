    // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract DataConsumerV3 {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Base Goerli
     * Aggregator: ETH/USD
     * Address: 0xcD2A119bD1F7DF95d706DE6F2057fDD45A0503E2
     */
    constructor() {
        priceFeed = AggregatorV3Interface(0xcD2A119bD1F7DF95d706DE6F2057fDD45A0503E2);
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
