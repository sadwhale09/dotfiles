
require('packer').startup(function(use)
-- Nvim Tree
use("nvim-tree/nvim-tree.lua")

-- Autoclosing brackets
use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
end)
