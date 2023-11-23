-- LSP
local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Mason (autocomplete)
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        -- Multi-purpose
        "ast-grep",
        "prettier",
        "prettierd",
        "sonarlint-language-server",
        "ast-grep",
        "selene",
        "stylua",
        "ltex-ls",
        "prettier",
        "prettierd",
        "vale",
        "ast-grep",
        "semgrep",
        "sonarlint-language-server",
        "trivy",

        -- .NET
        "netcoredbg",

        -- C#
        "clang-format",
        "csharp-language-server",
        "csharpier",
        "omnisharp",
        "omnisharp-mono",

        -- bash
        "bash-debug-adapter",
        "bash-language-server",
        "beautysh",
        "pkgbuild-language-server",
        "shellcheck",
        "shellharden",
        "shfmt",

        -- CSS
        "astpgrep",
        "css-lsp",
        "cssmodules-language-server",
        "stylelint",
        "tailwindcss-language-server",
        "unocss-language-server",

        -- HTML
        "erb-lint",
        "html-lsp",
        "htmlbeautifier",
        "markuplint",
        "rustywind",
        "stimulus-language-server",
        "templ",

        -- haxe ( :( )
        "haxe-language-server",

        -- latex
        "bibtext-tidy",
        "latexindent",
        "tectonic",
        "texlab",

        -- LUA
        "lua-language-server",
        "lemmy-help",
        "luacheck",
        "luaformatter",

        -- LUAU
        "luau-lsp",

        -- markdown
        "alex",
        "cbfmt",
        "doctoc",
        "glow",
        "markdown-toc",
        "markdownlint",
        "markdownlint-cli2",
        "markmap-cli",
        "marksman",
        "mdformat",
        "proselint",
        "prosemd-lsp",
        "remark-cli",
        "remark-language-server",
        "textlint",
        "vale-ls",
        "write-good",
        "zk",

        -- django (flask) 
        "curlylint",
        "djlint",

        -- python
        "autoflake",
        "autopep8",
        "black",
        "blackd-client",
        "blue",
        "darker",
        "debugpy",
        "docformatter",
        "flake8",
        "isort",
        "deji-language-server",
        "mutt-language-server",
        "mypy",
        "pydocstyle",
        "pyflakes",
        "pyink",
        "pylama",
        "pylint",
        "pylyzer",
        "pyment",
        "pyproject-flake8",
        "pyre",
        "pyright",
        "python-lsp-server",
        "reorder-python-imports",
        "rstcheck",
        "ruff",
        "ruff-lsp",
        "snyk",
        "sourcery",
        "usort",
        "vulture",
        "yapf"
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

-- CMP
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = false}),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),

        -- Scroll up and down in the completion documentation
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    })
})
