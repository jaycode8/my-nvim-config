
local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

local status, telescope = pcall(require, "telescope.builtin")
if status then
    -- Telescope
    map("n", "<leader>ff", telescope.find_files)
    map("n", "<leader>fg", telescope.live_grep)
    map("n", "<leader>fb", telescope.buffers)
    map("n", "<leader>fh", telescope.help_tags)
    map("n", "<leader>fs", telescope.git_status)
    map("n", "<leader>fc", telescope.git_commits)
else
    print("Telescope not found")
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>o", "<CMD>Neotree focus<CR>")

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=15 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=80 direction=vertical<CR>")

-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>")
map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Undo
map("n", "<C-z>","<Cmd>undo<CR>")
map("i", "<C-z>","<Cmd>undo<CR>")

-- Split window
map('n', 'ss', ':split<Return><C-w>w')
map('n', 'sv', ':vsplit<Return><C-w>w')

-- Window Navigation
map("n", "<sh>", "<C-w>h")
map("n", "<sl>", "<C-w>l")
map("n", "<sk>", "<C-w>k")
map("n", "<sj>", "<C-w>j")
