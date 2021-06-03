# Neovim Web Setup Package

## I. This package include:
- ### [nerdtree](https://github.com/preservim/nerdtree)
- ### [lightline.vim](https://github.com/itchyny/lightline.vim)
- ### [dracula-theme](https://draculatheme.com/vim)
- ### [vim-pylygot](https://github.com/sheerun/vim-polyglot)
- ### [coc.nvim](https://github.com/neoclide/coc.nvim)
- ### [vim-snippets](https://github.com/honza/vim-snippets)
- ### [vim-closetag](https://github.com/alvan/vim-closetag)
- ### [vim-surround](https://github.com/tpope/vim-surround)
- ### [vim-commentary](https://github.com/tpope/vim-commentary)
- ### [emmet-vim](https://github.com/mattn/emmet-vim)
- ### [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- ### [vim-easymotion](https://github.com/easymotion/vim-easymotion)
- ### [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- ### [vim-prettier](https://github.com/prettier/vim-prettier)
- ### And a few other settings...

## II. Installation

### NOTE: Make sure you have to install `nodejs`, `npm` and `yarn`.
```bash
sudo apt install nodejs npm && sudo npm install -g yarn
```


### 1. Clone nvim setup:
```bash
git clone https://github.com/Tai-Github/package.nvim.git ~/.config/nvim
```

### 2. Install Vim-plug:
```bash
wget -P ~/.local/share/nvim/site/autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 3. Install PLugin

- In `vim/nvim` run:
    ```
    :PLugCLean
    ```

- After that, in `vim/nvim` run:
    ```
    :PLugInstall
    ```

- If you want to get newest version of `vim/neovim` plugin, in `vim/nvim` simply run:
    ```
    :PLugUpdate
    ```

### 4. Learn Neovim And Plugins Command.
