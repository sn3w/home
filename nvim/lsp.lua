-- Setup LSP servers for bash and C
require'lspconfig'.clangd.setup{}
require'lspconfig'.bashls.setup{}

-- Autocompletion setup
require'compe'.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = false;
    source = {
        path = true;
        buffer = true;
        nvim_lsp = true;
        treesitter = true;
    };
}

