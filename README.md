# What can you find here

This repo tries to collect different tools and examples to help you start coding smart contracts. It's my journey. I'll hope this help others.

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

