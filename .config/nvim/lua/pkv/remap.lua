
--move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--cursor stays when appending lines from below
vim.keymap.set("n", "J", "mzJ`z")

--when pasting over, clipboard stays the same
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set('n', '<leader>p', '"0p')

--copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

--lets you edit current word by grep
vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--lets you edit words but asking for each one
vim.keymap.set("n", "<leader>sa", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]])

-- put cursor at the middle of screen when moving in the code
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })

-- put cursor at the middle of screen when finding a pattern
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true })

--use so clipboard
--vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }

--autoformat 
vim.keymap.set("n", "<leader>fm", [[mzgg=G`z]])

-- don't yank with x
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "X", '"_X')

-- vertical & horizontal window
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")
vim.keymap.set("n", "<leader>h", ":split<CR>")

-- switch betweeen windows
--vim.keymap.set("n", "<C-h>", "<C-w>h")
--vim.keymap.set("n", "<C-j>", "<C-w>j")
--vim.keymap.set("n", "<C-k>", "<C-w>k")
--vim.keymap.set("n", "<C-l>", "<C-w>l")

-- resize windows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- agregar a una palabra o conjunto de palabras caraceteres al inicio y final de dicha seleccion
vim.api.nvim_set_keymap('x', "<leader>'", '<Esc>`<i\'<Esc>`>a<right>\'<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>"', '<Esc>`<i"<Esc>`>a<right>"<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>(', '<Esc>`<i(<Esc>`>a<right>)<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>{', '<Esc>`<i{<Esc>`>a<right>}<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>[', '<Esc>`<i[<Esc>`>a<right>]<Esc>', { noremap = false, silent = true })
vim.api.nvim_set_keymap('x', '<leader>s', '<Esc>`<i <Esc>`>a<right> <Esc>', { noremap = false, silent = true })
