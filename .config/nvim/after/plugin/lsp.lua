local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'pyright'},
  handlers = {
    lsp_zero.default_setup,
  },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
  })
})

lsp_zero.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd",          function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K",           function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd",  function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d",          function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d",          function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>",       function() vim.lsp.buf.signature_help() end, opts)
end)

lsp_zero.setup()

vim.diagnostic.config({
    virtual_text = true
})

--Keybindings
--
--If you choose to use the function .default_keymaps() you gain access to some keybindings. 
--
--    K: Displays hover information about the symbol under the cursor in a floating window. See :help vim.lsp.buf.hover().
--
--    gd: Jumps to the definition of the symbol under the cursor. See :help vim.lsp.buf.definition().
--
--    gD: Jumps to the declaration of the symbol under the cursor. Some servers don't implement this feature. See :help vim.lsp.buf.declaration().
--
--    gi: Lists all the implementations for the symbol under the cursor in the quickfix window. See :help vim.lsp.buf.implementation().
--
--    go: Jumps to the definition of the type of the symbol under the cursor. See :help vim.lsp.buf.type_definition().
--
--    gr: Lists all the references to the symbol under the cursor in the quickfix window. See :help vim.lsp.buf.references().
--
--    gs: Displays signature information about the symbol under the cursor in a floating window. If a mapping already exists for this key this function is not bound.
--
--    <F2>: Renames all references to the symbol under the cursor. See :help vim.lsp.buf.rename().
--
--    <F3>: Format code in current buffer. See :help vim.lsp.buf.format().
--
--    <F4>: Selects a code action available at the current cursor position. See :help vim.lsp.buf.code_action().
--
--    gl: Show diagnostics in a floating window. See :help vim.diagnostic.open_float().
--
--    [d: Move to the previous diagnostic in the current buffer. See :help vim.diagnostic.goto_prev().
--
--    ]d: Move to the next diagnostic. See :help vim.diagnostic.goto_next().

