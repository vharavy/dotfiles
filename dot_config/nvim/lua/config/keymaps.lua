local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "n", "h", opts) -- Move Left
keymap.set("n", "o", "l", opts) -- Move Right
keymap.set("n", "e", "j", opts) -- Move Down
keymap.set("n", "i", "k", opts) -- Move Up

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
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally
