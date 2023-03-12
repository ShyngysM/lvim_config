vim.diagnostic.disable()      -- disable diagnostic by default
vim.opt.relativenumber = true       -- set relativenumber
lvim.transparent_window = false       -- set default transparency
vim.o.termguicolors = true      -- adds more colorschemes
lvim.colorscheme = "lunar"      -- set default theme

-- TODO: toggle of vim.diagnostic properly, this one is dummy with 2 bindings
lvim.keys.normal_mode["<Leader>ve"] = ':lua vim.diagnostic.enable()<CR>'
lvim.keys.normal_mode["<Leader>vd"] = ':lua vim.diagnostic.disable()<CR>'

-- Change the theme:
lvim.keys.normal_mode["<Leader>tt"] = "lvim.transparent_window = true<CR>"
lvim.keys.normal_mode["<Leader>td"] = ":colorscheme lunar<CR>"
--VSCODE THEME https://github.com/Mofiqul/vscode.nvim
lvim.keys.normal_mode["<Leader>tl"] = ":lua require('vscode').change_style('light')<CR>"

-- custom keybindings:
vim.api.nvim_set_keymap('n', '<C-Tab>', '<C-^>', { noremap = true, silent = true }) -- switching between buffers
