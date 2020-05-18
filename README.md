# dotvim

My personal Vim configuration

## Quick Start

## General Keybindings

### Files, Buffers and Windows

| keybingding  | Action                      |
|--------------|-----------------------------|
| s            | Move cursor to any position |
| H            | Previous buffer             |
| L            | Next buffer                 |
| M            | Half page down              |
| U            | Half page up                |
| \<space>fd   | Close file (delete buffer)  |
| \<space>ff   | Find file and open it       |
| \<space>fs   | Save buffer to file         |
| \<space>wd   | Close window                |
| \<leader>1-9 | Select window 1-9           |
| \<space>1-9  | Select buffer 1-9           |
| \<space>qq   | Quit vim                    |

### [Coc](https://github.com/neoclide/coc.nvim)

| keybingding | Action                    |
|-------------|---------------------------|
| \<space>lc  | List and execute commands |
| \<space>ld  | List diagnostics          |
| \<space>le  | List extensions           |
| \<space>fb  | Format buffer             |
| \<space>cc  | Open config file          |

### Git

| keybingding | Action        |
|-------------|---------------|
| \<space>gb  | Git blame     |
| \<space>gc  | Git commit    |
| \<space>gr  | Git rename    |
| \<space>gl  | Git log       |
| \<space>gp  | Git push      |
| \<space>gs  | Git status    |
| \<space>gd  | Git diff      |
| \<space>gj  | Next hunk     |
| \<space>gk  | Previous hunk |

### Navigation

| Keymapping | Action                         |
|:----------:|--------------------------------|
| gi         | Goto implementation            |
| gn         | Next diagnostic                |
| gp         | Previous diagnostic            |
| gr         | Goto references                |
| gy         | Goto type definition           |

## Languages

- [C/C++/Objective-C](./doc/cpp.md)
- [Latex](./doc/latex.md)
- [Markdown](./doc/markdown.md)
- [Python](./doc/python.md)

## Todos

- [ ] `Tab` of coc.nvim and coc-snippets conflict with each other

## FAQs

1. `CocInstall` command is very slow, seems to be stuck?

```sh
npm config set registry https://registry.npm.taobao.org
```
