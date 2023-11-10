local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set({"n", "v"}, "n", "h", opts) -- Move Left
keymap.set({"n", "v"}, "o", "l", opts) -- Move Right
keymap.set({"n", "v"}, "e", "j", opts) -- Move Down
keymap.set({"n", "v"}, "i", "k", opts) -- Move Up

keymap.set({"n", "v"}, "gn", "0", opts) -- Beginning of the current line
keymap.set({"n", "v"}, "go", "$", opts) -- End of the current line.
keymap.set({"n", "v"}, "ge", "G", opts) -- Last line of the file.
keymap.set({"n", "v"}, "gi", "gg", opts) -- First line of the file.

keymap.set({"n", "v"}, "gm", "^", opts) -- First non-whitespace character of the current line

keymap.set("n", "h", "i", opts) -- Insert at Cursor
keymap.set("n", "H", "I", opts) -- Insert at BOL
keymap.set("n", "l", "o", opts) -- Insert at New Line Below
keymap.set("n", "L", "O", opts) -- Insert at New Line Above

-- Pane Navigation
keymap.set("n", "<C-n>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-o>", "<C-w>l", opts) -- Navigate Right
keymap.set("n", "<C-e>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-i>", "<C-w>k", opts) -- Navigate Up

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally

-- Nvim Tree
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

local api = vim.api

-- Comments
api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false })

