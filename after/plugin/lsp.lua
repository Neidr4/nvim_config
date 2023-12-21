local lsp = require('lsp-zero')

lsp.preset('recommended')

-- lsp.ensure_installed({
--     -- 'tsserver',
--     -- 'eslint',
--     -- 'sumneko_lua',
--     'lua_ls',
--     'rust_analyzer',
--     'pylsp',
-- })

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'rust_analyzer', 'pylsp', 'lua_ls'},
  handlers = {
    lsp.default_setup,
  },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_select = {behavious = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n'] = cmp.mapping.select_next_item(cmp_select),
    -- ['<C-y'] = cmp.mapping.confirm({ select = true }),
    -- ['<Space>'] = cmp.mapping.confirm({ select = true }),
    ['<Enter>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space'] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = { }
})

-- lsp.setup_nvim_cmp({
--     mapping = cmp_mappings
-- })

cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<Enter>'] = cmp.mapping.confirm({ select = true }),
  })
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.lsp.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.lsp.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.lsp.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
