require("user.impatient")
require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.autocommands")
require("user.colorscheme")
require("user.cmp")
require("user.telescope")
require("user.gitsigns")
require("user.treesitter")
require("user.autopairs")
require("user.comment")
require("user.nvim-tree")
require("user.bufferline")
require("user.lualine")
require("user.toggleterm")
require("user.project")
require("user.illuminate")
require("user.indentline")
require("user.alpha")
require("user.lsp")
require("user.dap")
require("user.nvim-notify")
-- vim.notify = require("notify")
-- Lua配置随机颜色
random_color = {
	"gruvbox",
	"nord",
	"onedark",
	"deus",
	"abstract",
	"afterglow",
	"alduin",
	"anderson",
	"angr",
	"deep-space",
	"dogrun",
	"gotham",
	"parsec",
	"hybrid",
	"jellybeans",
	"meta5",
	"minimalist",
	"lucid",
	"one",
	"orbital",
	"paramount",
	"pink-moon",
	"purify",
	"rakr",
	"seoul256",
	"sierra",
	"solarized8",
	"sonokai",
	"space-vim-dark",
	"tender",
	"termschool",
	"twilight256",
	"two-firewatch",
  "tokyonight-night",
  "darkplus"
}
math.randomseed(os.time())
local mycolor = random_color[math.random(35)]
vim.cmd("colorscheme " .. mycolor)
vim.notify("The colorscheme is " .. mycolor)
