# Markdown

## Features

- Syntax highlighting, matching rules ([vim-markdown](https://github.com/plasticboy/vim-markdown))
- Linting ([coc-markdownlint](https://github.com/fannheyward/coc-markdownlint), [markdownlint](https://github.com/DavidAnson/markdownlint))
- Previewing ([markdown-preview](https://github.com/iamcco/markdown-preview.nvim))

## Install

- Add the following to your .vimrc/init.vim when using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'
```

- In your vim/neovim, run the command (need [Coc](https://github.com/neoclide/coc.nvim)):

```vim
:CocInstall coc-markdownlint
```

- In your terminal, run the command:

```sh
cd && npm install markdownlint --save-dev
```

## Keybindings

| Keymapping | Action                                    |
|:----------:|-------------------------------------------|
| gx         | Open the link under the cursor in browser |
| ge         | Open the link under the cursor in Vim     |
| ]]         | Go to next header                         |
| \[\[       | Go to previous header                     |
| ][         | Go to next sibling header if any          |
| []         | Go to previous sibling header if any      |
| ]c         | Go to current header                      |
| ]u         | Go to parent header                       |
| \<leader>f | Format the table under the cursor         |
| \<leader>t | Create table of contents with the headers |
| \<leader>p | Toggle markdown preview                   |

## Commands

- `:CocCommand markdownlint.fixAll`: Fix all errors in current file found by markdownlint
- `:HeaderDecrease`: Decrease level of all headers in buffer
- `:HeaderIncrease`: Increase level of all headers in buffer
- `:MarkdownPreview`: Start the preview
- `:MarkdownPreviewStop`: Stop the preview

## Todos

- [ ] Toggle toc, `<leader>t` can only open toc, not close it.
- [ ] Insert links and images more easily, snippets?
- [ ] g:vim_markdown_toc_autofit shows not good.
