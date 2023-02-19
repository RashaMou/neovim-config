local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

map("n", "<leader>ex", vim.cmd.Ex)

map("v", "J", ":m '>+1<CR>gv=gv") -- moves entire selection up or down
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z") -- appending line below does not move cursor
map("n", "<C-d>", "<C-d>zz") -- keep cursor in the middle of the screen 
map("n", "<C-u>", "<C-u>zz") 
map("n", "n", "n", "nzzzv") 
map("n", "N", "n", "Nzzzv") 

map("x", "<leader>p", "\"_dP") -- do not lost current paste buffer when pasting

map({"n", "v"}, "<leader>y", [["+y]]) -- yanking intto system clipboard
map("n", "<leader>Y", [["+Y]])

map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replaces the word i am on throughout the file

map("n", "<leader>bd", vim.cmd.bd) -- buffers
map("n", "bn", vim.cmd.bn)
map("n", "bp", vim.cmd.bp)

map("n", "<C-h>", "<C-w>h") -- split navigation
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "cb", "cvb") -- change back takes the whole word
