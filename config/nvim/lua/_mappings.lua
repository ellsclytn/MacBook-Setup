local wk = require('which-key')

-- Copy to system clipboard
vim.keymap.set('v', '<leader>y', '"+y')

-- Toggle relative/absolute line numbers
vim.keymap.set('n', '<C-L>', ':setlocal relativenumber!<cr>')

-- Window nav similar to i3 navigation
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')

-- Double space over word to Subvert
vim.keymap.set('n', '<Space><Space>', ':%S/<C-r>=expand("<cword>")<CR>/')
-- Leader + space over word to find and replace
vim.keymap.set('n', '<leader><Space>', ':%s/<C-r>=expand("<cword>")<CR>/')

-- Reselect visual block after indent
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'sd', vim.diagnostic.open_float)
vim.keymap.set('n', 'sa', vim.lsp.buf.code_action)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename)

-- Buffer management
vim.keymap.set('n', '<leader>bl', ':BufferLinePick<CR>', { desc = 'Pick buffer' })

wk.register({
    bd = {
        name = 'Delete buffers',
    },
}, { prefix = '<leader>' })

vim.keymap.set('n', '<leader>bdl', ':BufferLineCloseLeft<cr>', { desc = 'Delete buffers to the left' })
vim.keymap.set('n', '<leader>bdr', ':BufferLineCloseRight<cr>', { desc = 'Delete buffers to the right' })
vim.keymap.set('n', '<leader>bdo', ':BufferLineCloseOthers<cr>', { desc = 'Delete other buffers' })
vim.keymap.set('n', '<leader>bdc', ':b#|bd#<cr>', { desc = 'Delete current buffer' })
