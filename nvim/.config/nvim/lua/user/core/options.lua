local opt = vim.opt -- local variable for conciseness

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentantion
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true


-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true -- search is non case-sensitive
opt.smartcase = true -- can search uppercase despite above

-- cursor line
opt.cursorline = true

-- appearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- navigation
opt.backspace = "indent,eol,start"
opt.scrolloff = 20 -- scrolls the whole text with set margin

-- clipboard
opt.clipboard:append("unnamedplus") -- uses the system clipboard

-- split windows
opt.splitright = ture
opt.splitbelow = ture

-- misc
opt.iskeyword:append("-") -- dash-separated words can be deleted by `dw`



