require("./plugins")

-- General

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.clipboard = "unnamed"

vim.wo.number = true

vim.keymap.set('n', '<C-i>', ':tabp<CR>')
vim.keymap.set('n', '<C-o>', ':tabn<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<C-w>', ':q<CR>')
vim.keymap.set('n', '<esc>', ':noh<return><esc>')

vim.api.nvim_set_keymap("i", "<TAB>", "coc#pum#visible() ? coc#pum#next(1) : '<TAB>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-h>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})

-- Autopair

local autopairs = require('nvim-autopairs')
autopairs.setup()

require('nvim-treesitter.configs').setup {
  endwise = {
    enable = true,
  },
}

autopairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))

-- Color

vim.cmd('set termguicolors')
vim.cmd('let base16colorspace=256')
vim.cmd('colorscheme base16-gruvbox-dark-hard')

-- Telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-t>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
