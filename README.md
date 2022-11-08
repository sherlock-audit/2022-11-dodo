# DODO contest details

- 10,000 USDC main award pot
- Join [Sherlock Discord](https://discord.gg/MABEWyASkp)
- Submit findings using the issue page in your private contest repo (label issues as med or high)
- [Read for more details](https://docs.sherlock.xyz/audits/watsons)
- Starts November 9, 2022 15:00 UTC
- Ends November 12, 2022 15:00 UTC

# Resources

- [Website](https://dodoex.io/)
- [Twitter](https://twitter.com/BreederDodo)

# On-chain context

```
DEPLOYMENT: mainnet, arbitrum, optimism, ..
ERC20: any
ERC721: none
```

# Audit scope

The following contracts in the DODOEX/dodo-route-contract repo are in scope.

- /SmartRoute/DODORouteProxy.sol
- DODOApprove.sol
- DODOApproveProxy.sol
- IDODOApprove.sol
- lib/DecimalMath.sol
- lib/UniversalERC20.sol


# About DODO

DODO is a decentralized exchange platform powered by the Proactive Market Maker (PMM) algorithm. It features highly capital-efficient liquidity pools that support single-token provision, reduce impermanent loss, and minimize slippage for traders. The trading platform also offers SmartTrade, a decentralized liquidity aggregation service that routes to and compares various liquidity sources to quote the optimal swap rate between any two tokens.

DODORouteProxy is a new routeProxy contract with fee rebate to manage all route. It provides three methods to swap, including mixSwap,multiSwap and externalSwap. Mixswap is for linear swap, which describes one token path with one pool each time. Multiswap is a simplified version about 1inch, which describes one token path with several pools each time. ExternalSwap is for other routers like 0x, 1inch and paraswap. Dodo and front-end users could take certain route fee rebate from each swap. Wherein dodo will get a fixed percentage, and front-end users could assign any proportion through function parameters. 

# Test

Inheritaged a template using Foundry && HardHat architecture.
All tests base on hardhat.

## Motivation

With this new architecture, we can get:

- Unit tests written in solidity
- Foundry's cast
- Integration testing with Hardhat
- Hardhat deploy & verify
- Typescript

### Hardhat

Hardhat is an Ethereum development environment for professionals. It facilitates performing frequent tasks, such as running tests, automatically checking code for mistakes or interacting with a smart contract.

On [Hardhat's website](https://hardhat.org) you will find:

- [Guides to get started](https://hardhat.org/getting-started/)
- [Hardhat Network](https://hardhat.org/hardhat-network/)
- [Plugin list](https://hardhat.org/plugins/)

## Directory Structure

```
integration - "Hardhat integration tests"
lib - forge-std: "Test dependency"
scripts - "hardhat deploy scripts"
contracts - "Solidity contract"
test - "forge tests"
.env.example - "Expamle dot env"
.gitignore - "Ignore workfiles"
.gitmodules -  "Dependecy modules"
.solcover.js - "Configure coverage"
.solhint.json - "Configure solidity lint"
foundry.toml - "Configure foundry"
hardhat.config.ts - "Configure hardhat"
package.json - "Node dependencies"
README.md - "This file"
remappings.txt - "Forge dependcy mappings"
slither.config.json - "Configure slither"
```

## Installation

### Hardhat

`npm install` or `yarn`

## Commands

```sh
Scripts available via `npm run-script`:
  compile
    npx hardhat compile
  coverage
    npx hardhat coverage --solcoverjs .solcover.js
  deploy
    npx hardhat run scripts/deploy.ts
  integration
    npx hardhat test
  verify
    npx hardhat verify
```
```sh
Hardhat Commands
  integration tests
    yarn integration
  coverage
    yarn coverage
```

## Adding dependency

Prefer `npm` packages when available and update the remappings.


