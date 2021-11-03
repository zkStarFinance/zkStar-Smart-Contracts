// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './LowGasSafeMath.sol';
import './SafeCast.sol';

import './FullMath.sol';
import './Constants.sol';

/// @title Functions based on Q64.96 sqrt price and liquidity
/// @notice Contains the math that uses square root of price as a Q64.96 and liquidity to compute deltas
library TokenDeltaMath {
    using LowGasSafeMath for uint256;
    using SafeCast for uint256;

    /// @notice Gets the token0 delta between two prices
    /// @dev Calculates liquidity / sqrt(lower) - liquidity / sqrt(upper),
    /// i.e. liquidity * (sqrt(upper) - sqrt(lower)) / (sqrt(upper) * sqrt(lower))
    /// @param priceLower A sqrt price
    /// @param priceUpper Another sqrt price
    /// @param liquidity The amount of usable liquidity
    /// @param roundUp Whether to round the amount up or down
    /// @return token0Delta Amount of token0 required to cover a position of size liquidity between the two passed prices
    function getToken0Delta(
        uint160 priceLower,
        uint160 priceUpper,
        uint128 liquidity,
        bool roundUp
    ) internal pure returns (uint256 token0Delta) {
        require(priceLower > 0);
        uint256 priceDelta = priceUpper - priceLower;
        uint256 liquidityShifted = uint256(liquidity) << Constants.RESOLUTION;

        token0Delta = roundUp
            ? FullMath.divRoundingUp(FullMath.mulDivRoundingUp(priceDelta, liquidityShifted, priceUpper), priceLower)
            : FullMath.mulDiv(priceDelta, liquidityShifted, priceUpper) / priceLower;
    }

    /// @notice Gets the token1 delta between two prices
    /// @dev Calculates liquidity * (sqrt(upper) - sqrt(lower))
    /// @param priceLower A sqrt price
    /// @param priceUpper Another sqrt price
    /// @param liquidity The amount of usable liquidity
    /// @param roundUp Whether to round the amount up, or down
    /// @return token1Delta Amount of token1 required to cover a position of size liquidity between the two passed prices
    function getToken1Delta(
        uint160 priceLower,
        uint160 priceUpper,
        uint128 liquidity,
        bool roundUp
    ) internal pure returns (uint256 token1Delta) {
        uint256 priceDelta = priceUpper - priceLower;
        token1Delta = roundUp
            ? FullMath.mulDivRoundingUp(priceDelta, liquidity, Constants.Q96)
            : FullMath.mulDiv(priceDelta, liquidity, Constants.Q96);
    }

    /// @notice Helper that gets signed token0 delta
    /// @param priceLower A sqrt price
    /// @param priceUpper Another sqrt price
    /// @param liquidity The change in liquidity for which to compute the token0 delta
    /// @return token0Delta Amount of token0 corresponding to the passed liquidityDelta between the two prices
    function getToken0Delta(
        uint160 priceLower,
        uint160 priceUpper,
        int128 liquidity
    ) internal pure returns (int256 token0Delta) {
        token0Delta = liquidity >= 0
            ? getToken0Delta(priceLower, priceUpper, uint128(liquidity), true).toInt256()
            : -getToken0Delta(priceLower, priceUpper, uint128(-liquidity), false).toInt256();
    }

    /// @notice Helper that gets signed token1 delta
    /// @param priceLower A sqrt price
    /// @param priceUpper Another sqrt price
    /// @param liquidity The change in liquidity for which to compute the token1 delta
    /// @return token1Delta Amount of token1 corresponding to the passed liquidityDelta between the two prices
    function getToken1Delta(
        uint160 priceLower,
        uint160 priceUpper,
        int128 liquidity
    ) internal pure returns (int256 token1Delta) {
        token1Delta = liquidity >= 0
            ? getToken1Delta(priceLower, priceUpper, uint128(liquidity), true).toInt256()
            : -getToken1Delta(priceLower, priceUpper, uint128(-liquidity), false).toInt256();
    }
}