# raylibshim
A shim library for Euphoria and Raylib

## Requirements

* [raylib](https://github.com/raysan5/raylib)
* [Euphoria 4.1](https://openeuphoria.org/wiki/view/DownloadEuphoria.wc#betafortestingeuphoria410beta2)
* [TDM-GCC 5.1.0](http://tdm-gcc.tdragon.net/download)

## Notes

* I haven't actually tested the Linux builds yet.
* On Linux, just use `make` instead of `mingw32-make`.
* To build 32-bit library on a 64-bit system, add `CFLAGS=-m32` to the `make` command.

## Download

### raylib

```
git clone https://github.com/raysan5/raylib raysan5/raylib
```

### raylibshim

```
git clone https://github.com/ghaberek/raylibshim ghaberek/raylibshim
```

## Build

### raylib

```
cd raysan5/raylib/src
mingw32-make CC=gcc RAYLIB_LIBTYPE=SHARED
```

### raylibshim

```
cd ghaberek/raylib/src
mingw32-make CC=gcc RAYLIBDIR=../../../raysan5/raylib/src
```
