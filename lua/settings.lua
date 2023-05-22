-- Config
G.mapleader = ' '                               -- Set key <leader>
SET.filetype.plugin = 'on'                      -- Filetype detection
SET.syntax = 'on'                               -- Enable syntax highlight
SET.fileencoding = 'utf-8'                      -- The encoding written to file
SET.guifont = 'FuraCode NF:h16'                 -- Change gui font
SET.mouse = 'a'                                 -- Enable your mouse
SET.tabstop = 2                                 -- Insert 2 spaces for a tab
SET.shiftwidth = 2                              -- Change 2 space characters inserted for indentation
SET.showtabline = 2                             -- Always show tablines
SET.showmode = false                            -- Disable show --INSERT-- on left corner of the screen
SET.number = true                               -- Set number lines
SET.relativenumber = true                       -- Set relative number lines
SET.splitbelow = true                           -- Horizontal splits will automatically be below
SET.splitright = true                           -- Vertical splits will automatically be to the right
SET.clipboard = 'unnamedplus'                   -- Using system clipboard
SET.swapfile = false                            -- Disable swap files
SET.backup = false                              -- Disable backup
SET.writebackup = false                         -- Disable write backup
SET.cursorline = true                           -- Enable highlighting of the current line
SET.termguicolors = true                        -- Set term gui colors most terminals support this
SET.expandtab = true                            -- Converts tabs to spaces
SET.mousemoveevent = true                       -- Enable vim mouse move event
CMD('autocmd BufWritePre * %s/\\s\\+$//e')      -- Remove trailing whitespace on save
CMD[[
let g:clipboard = {
            \   'name': 'WslClipboard',
            \   'copy': {
            \      '+': 'clip.exe',
            \      '*': 'clip.exe',
            \    },
            \   'paste': {
            \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
            \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
            \   },
            \   'cache_enabled': 0,
            \ }
]]
