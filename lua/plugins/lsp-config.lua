return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "rust_analyzer",
        "gopls",
      },
      automatic_installation = true,
    })

    -- LSPCONFIG
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local opts = { capabilities = capabilities }

    require("mason-lspconfig").setup_handlers({
      -- default
      function (server_name)
        lspconfig[server_name].setup(opts)
      end,

      -- typescript
      ["ts_ls"] = function ()
        lspconfig.ts_ls.setup({
          cmd = { "typescript-language-server.cmd", "--stdio" },
          capabilities = capabilities
        })
      end,
    })

    -- MAPPINGS
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  end
}
