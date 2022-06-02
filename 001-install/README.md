# OSX

## Partiy - homebrew

Using homebrew for installing software on osx is the best option.

In order to install Parity on osx, the following repo describres the steps:

https://github.com/paritytech/homebrew-paritytech

### Adding Parity to youf list of Homebrew taps

```
$ brew tap paritytech/homebrew-paritytech
```

If you need to use the _stable_ version install it with:

```
$ brew install parity
```

The latest nightly _development_ releases are available via:

```
$ brew install parity --HEAD
```

In order to update parity to the latest version of the track you're using:

```
$ brew upgrade parity
```

_note_: the _--devel_ flag is not valid as the README file explains
