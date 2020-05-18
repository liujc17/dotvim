# Python

## Features

- Intellisense and autocomplete
- Code navigation
- Code formatting (yapf, autopep8, black), default `black`
- Linting (pylint, flake8, etc), default `pylint`
- Snippets
- Refactoring
- Sort imports (isort)
- Automatic activation of environments
- Running a file or selected text in terminal

## Install

- In your vim/neovim, run command (need [Coc](https://github.com/neoclide/coc.nvim)):

```vim
:CocInstall coc-python
```

- Install python tools:

```sh
pip install black yapf autopep8 pylint flake8 isort
```

## Keybindings

| Keymapping | Action                         |
|:----------:|--------------------------------|
| \<space>r  | Run current buffer in terminal |
| \<leader>i | Sort imports                   |

## Commands

Open the Command List (use :CocCommand in vim) and type one of the following commands:

- `python.setInterpreter`: Switch between Python interpreters, versions, and environments.
- `python.startREPL`: Start an interactive Python REPL in terminal.
- `python.execInTerminal`: Runs the active Python file in terminal.
- `python.setLinter`: Switch from PyLint to flake8 or other supported linters.
