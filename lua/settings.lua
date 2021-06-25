-- Basic settings
vim.g.mapleader = ' '                         -- Set key <leader>
vim.o.mouse = 'a'                             -- Enable your mouse
vim.o.fileencoding = "utf-8"                  -- The encoding written to file
vim.o.showmode = false                        -- Disable show like --INSERT-- on left corner of the screen
vim.wo.number = true                          -- Set number lines
vim.wo.relativenumber = true                  -- Set relative number lines
vim.o.clipboard = 'unnamedplus'               -- Using system clipboard
vim.o.splitbelow = true                       -- Horizontal splits will automatically be below
vim.o.splitright = true                       -- Vertical splits will automatically be to the right
vim.o.showtabline = 2                         -- Always show tablines
vim.o.swapfile = false                        -- Disable swap files
vim.o.backup = false                          -- Disable backup
vim.o.writebackup = false                     -- Disable write backup

-- Syntax highlight settings
vim.cmd('syntax on')                          -- Enable syntax highlight
vim.wo.cursorline = true                      -- Enable highlighting of the current line
vim.o.termguicolors = true                    -- Set term gui colors most terminals support this

-- Tab settings
vim.cmd('set expandtab')                      -- Converts tabs to spaces
vim.cmd('set tabstop=2')                      -- Insert 2 spaces for a tab
vim.cmd('set shiftwidth=2')                   -- Change the number of space characters inserted for indentation
vim.cmd('set autoindent')                     -- Auto indent when go to the next line

-- Source this file to have auto remove whitespace when save
vim.cmd('source '..vim.fn.stdpath('config')..'/vimscripts/global-function.vim')

