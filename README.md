# What can you find here

This repo tries to collect different tools and examples to help you start coding smart contracts. It's my journey. I'll hope this help others.

## Articles:

In the Articles folder you will find different notes. Each do this are presented
as articles on my personal blog (agustinvinao.com) and here too.


* [4 steps to deploy a Hello World smart contract on your local dev network (thuffle, ganache and metamask)](https://github.com/agustinvinao/blockchain-101/blob/main/articles/001-4-steps-to-deploy-a-hello-world-smart-contract-on-your-local-dev-network-thuffle-ganache-and-metamask.md)


---

#### _not fully working yet_

## Using a network for development

Goerli is a network designer to work with different Ethereum clients such as
Geth and Parity.

```
$ parity --chain=goerli
```

## build image with podman

```
podman build --platform linux/arm64 --build-arg=BUILD_FROM=aarch64 --build-arg=BUILD_ARCH=armv8 --runtime-flag debug .
```

## build container

```
podman build -t parity --runtime-flag debug .
```

## run container

```
podman run --config config.toml
```

### article

https://medium.com/cladular/running-a-parity-docker-container-with-custom-configuration-938ba0ecde3e

## deploying contract output

```
❯ truffle migrate --network development

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


Starting migrations...
======================
> Network name:    'development'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0x5df3532ca5ec6f7cadb68f09325f2759c3ca167c447b751c2bb0794b38643478
   > Blocks: 0            Seconds: 0
   > contract address:    0xc25334B62eE29DCB9D047b357cb417dbB1BF4508
   > block number:        1
   > block timestamp:     1654334389
   > account:             0x3720848107372bdD28dF25D006A3aa17274A34A4
   > balance:             99.99502292
   > gas used:            248854 (0x3cc16)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00497708 ETH

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00497708 ETH

2_deploy_greeter.js
===================

   Replacing 'Greeter'
   -------------------
   > transaction hash:    0xba9c6865f6d00c1bf0fab532ac11303dc85dd60a661f6b3c84af458fffb43fcc
   > Blocks: 0            Seconds: 0
   > contract address:    0x6d1b76ACC8d94bec6D2D13532aA036Ad17B09200
   > block number:        3
   > block timestamp:     1654334389
   > account:             0x3720848107372bdD28dF25D006A3aa17274A34A4
   > balance:             99.9818886
   > gas used:            614203 (0x95f3b)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.01228406 ETH

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.01228406 ETH

Summary
=======
> Total deployments:   2
> Final cost:          0.01726114 ET
```
