local vim = vim
vim.g.mapleader = " "
vim.opt.shortmess:append("I")

vim.opt.termguicolors = true
vim.opt.guifont = "JetBrainsMono Nerd Font:h14"
vim.opt.number = true
vim.opt.undofile = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = false
vim.opt.cmdheight = 1
vim.opt.spelllang = "en_us"
vim.opt.list = true
vim.opt.tabstop = 5
vim.opt.cursorline = false
vim.opt.shiftwidth = 5
vim.opt.softtabstop = 5
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"

-- Search settings:
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.signcolumn = "no"
vim.opt.colorcolumn = ""
vim.opt.showmatch = true
vim.opt.matchtime = 2
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.winblend = 0
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""
vim.opt.lazyredraw = false
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000
vim.opt.synmaxcol = 300

-- File handling:
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 0
vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.diffopt:append("vertical")
vim.opt.diffopt:append("algorithm:patience")
vim.opt.diffopt:append("linematch:60")

-- Behavior settings:
vim.opt.errorbells = false
vim.opt.backspace = "indent,eol,start"
vim.opt.autochdir = false
vim.opt.iskeyword:append("-")
vim.opt.path:append("**")
vim.opt.selection = "inclusive"
vim.opt.modifiable = true
vim.opt.encoding = "UTF-8"
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignorecase = true

-- Folding Settings:
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99

-- Split Behavior:
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
})

vim.cmd(":hi statusline guibg=NONE")

vim.pack.add({
     {src = "https://github.com/vague-theme/vague.nvim"},
     {src = "https://github.com/neovim/nvim-lspconfig"},
     {src = "https://github.com/mason-org/mason.nvim"},
     {src = "https://github.com/folke/snacks.nvim"},
     {src = "https://github.com/lervag/vimtex", version = "v2.18"},
     {src = "https://github.com/vyfor/cord.nvim"},
})


vim.cmd("colorscheme vague")

-- Snacks
require("snacks").setup({
     picker = {enabled = true}
})

require("cord").setup({
     idle = {
          enabled = false,
     },
     display = {
          theme = "minecraft"
     },
})
-- Mason
require("mason").setup()

-- Vimtex
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
    options = {
        "-lualatex",
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
    },
}

-- Enable the LSP
vim.lsp.enable({"lua_ls"})
vim.lsp.enable({"pyright"})
vim.lsp.enable({"clangd"})
