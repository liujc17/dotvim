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
# build from source
sudo apt install clang cmake libclang-dev llvm-dev rapidjson-dev
git clone --depth=1 --recursive https://github.com/MaskRay/ccls
cd ccls
cmake -H. -BRelease
cmake --build Release
sudo cmake --build Release --target install
```

For Debian 11 or later

```sh
sudo apt install ccls
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
cd project_root_dir
ln -s ~/.vim/clang-format .clang-format
```

### Project setup

Refer to [.ccls](https://github.com/MaskRay/ccls/wiki/Project-Setup#ccls-file)

## Keybindings

| Keymapping | Action               |
|:----------:|----------------------|

## Todos
