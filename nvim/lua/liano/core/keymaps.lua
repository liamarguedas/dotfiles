vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("v", "qq", "<ESC>") -- qq to go to normal in visual
keymap.set("i", "qq", "<ESC>") -- qq to go to normal mode in insert
keymap.set("c", "qq", "<ESC>") -- qq to go to normal mode in command

keymap.set("n", "x", '"_x') -- Delete single character but not copy it

-- num increment/decrement
keymap.set("n", "<leader>=", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window managment
keymap.set("n", "<leader>t", ":tabnew<CR>") -- Opens new tab with SPACE+T
keymap.set("n", "<leader>w", ":tabclose<CR>") -- Closes tab with SPACE+W
keymap.set("n", "<leader>i", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>e", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- file explorer management
keymap.set("n", "<leader>q", ":NvimTreeToggle<CR>") -- Open File Explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- enable highlight
keymap.set("n", "<leader>o", "<cmd>TSEnable highlight<CR>")
