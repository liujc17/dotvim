# C/C++/Objective-C

## Features

- Code completion (with both signature help and snippets)
- Definition/references, and other cross references
- Cross reference extensions
- Formatting
- Hierarchies
- Symbol rename
- Document symbols and approximate search of workspace symbol
- Hover information
- Diagnostics and code actions (clang FixIts)
- Semantic highlighting and preprocessor skipped regions
- Semantic navigation

## Install

### [ccls](https://github.com/MaskRay/ccls)

For Debian 10

```sh
$ sudo apt install clang cmake libclang-dev llvm-dev rapidjson-dev
$ git clone --depth=1 --recursive https://github.com/MaskRay/ccls
$ cd ccls
$ cmake -H. -BRelease
$ cmake --build Release
$ sudo cmake --build Release --target install
```

For Debian 11 or later

```sh
sudo apt install ccls
```

For Ubuntu 18.04

```sh
$ sudo apt install cmake rapidjson-dev
$ git clone --depth=1 --recursive https://github.com/MaskRay/ccls
$ cd ccls
$ wget -c http://releases.llvm.org/8.0.0/clang+llvm-8.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz
$ tar xf clang+llvm-8.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz
$ cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=$PWD/clang+llvm-8.0.0-x86_64-linux-gnu-ubuntu-18.04
$ cmake --build Release
$ sudo cmake --build Release --target install
```

### nodejs

[Coc](https://github.com/neoclide/coc.nvim) depends on nodejs. For Debian/Ubuntu

```sh
$ curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
$ sudo apt install nodejs
```

## Configuration

### [Coc](https://github.com/neoclide/coc.nvim)

```json
"languageserver": {
    "ccls": {
        "command": "ccls",
        "filetypes": [
            "c",
            "cpp",
            "objc",
            "objcpp"
        ],
        "rootPatterns": [
            ".ccls",
            "compile_commands.json",
            ".git/"
        ],
        "initializationOptions": {
            "cache": {
                "directory": "/tmp/ccls"
            }
        }
    }
}
```

### Format buffer

```sh
$ cd project_root_dir
$ ln -s ~/.vim/clang-format .clang-format
```

### Project setup

Refer to [.ccls](https://github.com/MaskRay/ccls/wiki/Project-Setup#ccls-file) file.

## Keybindings

| Keymapping | Action               |
|:----------:|----------------------|

## Todos
