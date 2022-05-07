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

```
podman build --runtime-flag debug .
```
