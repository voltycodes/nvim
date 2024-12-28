return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    },
    config = function ()
      local ls = require("luasnip")
      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node

      local custom_snippets = {
        s("func", {
          t("export default function "), i(1, "Page"), t("() {"),
          t({"", "  return ("}),
          t({"", "    "}), i(2, "{/* return */}"),
          t({"", "  );"}),
          t({"", "}"}),
        }),
        s("cls", {
          t('className="'), i(1), t('"'),
        }),
      }

      ls.add_snippets(nil, {
        javascript = custom_snippets,
        typescript = custom_snippets,
        javascriptreact = custom_snippets,
        typescriptreact = custom_snippets,
      })
      require'luasnip/loaders/from_vscode'.lazy_load()
    end

  },
  {
    'hrsh7th/nvim-cmp',
    config = function ()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
        }, {
          { name = 'buffer' },
        })
      })

    end,
  }
}
