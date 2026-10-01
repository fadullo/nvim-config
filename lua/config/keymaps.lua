local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>e", vim.cmd.Ex)
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")
keymap({"n", "v"}, "<leader>y", [["+y]])
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Quick movement between splits
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Splitting windows
keymap("n", "<leader>sv", "<Cmd>vsplit<CR>")
keymap("n", "<leader>sh", "<Cmd>split<CR>")

-- Resizing windows with arrow keys
keymap("n", "<C-Up>", "<Cmd>resize +2<CR>", opts)
keymap("n", "<C-Down>", "<Cmd>resize -2<CR>", opts)
keymap("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", opts)

-- Stay in visual mode while indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "J", "mzJ`z", opts)
keymap("n", "<leader>rc", function()
    vim.cmd("e " .. vim.fn.stdpath("config"))
end)

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Replace
keymap("n", "<leader>s", [[:%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Comment
keymap("n", "<leader>/", "gcc", {remap = true})
keymap("v", "<leader>/", "gc", {remap = true})

-- Diagnostics
keymap('n', '<Leader>d', vim.diagnostic.open_float)

