-- ~/.config/nvim/lua/colors/retro_terminal.lua

local bg             = "#0a0f0a"
local green_main     = "#00ff00"
local green_dim      = "#00cc00"
local green_dark     = "#009900"
local green_ui       = "#004400"
local green_cursor   = "#00ff66"
local green_sel      = "#005500"
local green_bright   = "#66ff66"
local green_comment  = "#007700"
local green_border   = "#006600"

vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "dark"
vim.g.colors_name = "retro_terminal"


local highlights = {
  -- Sintaxe
  Comment        = { fg = green_comment, italic = true },
  Keyword        = { fg = green_main, bold = true },
  PreProc        = { fg = green_main, bold = true },
  Type           = { fg = green_bright, bold = true },
  StorageClass   = { fg = green_main },
  Constant       = { fg = green_bright },
  Identifier     = { fg = green_main },
  Function       = { fg = green_bright, bold = true },
  String         = { fg = green_dim },
  Number         = { fg = green_main },
  Operator       = { fg = green_main },
  Statement      = { fg = green_main },
  Delimiter      = { fg = green_dim },
  Special        = { fg = green_bright },
  Todo           = { fg = green_main, bold = true },

  -- UI
  Normal         = { fg = green_main, bg = bg },
  NormalNC       = { fg = green_comment, bg = bg },
  EndOfBuffer    = { fg = green_ui, bg = bg },
  LineNr         = { fg = green_ui, bg = bg },
  CursorLineNr   = { fg = green_cursor, bold = true },
  CursorLine     = { bg = green_ui },
  Visual         = { bg = green_sel },
  Search         = { fg = bg, bg = green_main },
  VertSplit      = { fg = green_border, bg = bg },
  WinSeparator   = { fg = green_border, bg = bg },
  StatusLine     = { fg = green_bright, bg = bg, bold = true },
  StatusLineNC   = { fg = green_comment, bg = bg },
  TabLine        = { fg = green_comment, bg = green_ui },
  TabLineSel     = { fg = green_bright, bg = green_ui, bold = true },
  TabLineFill    = { fg = green_ui, bg = bg },

  -- NvimTree
  NvimTreeNormal           = { fg = green_main, bg = bg },
  NvimTreeNormalNC         = { fg = green_comment, bg = bg },
  NvimTreeVertSplit        = { fg = green_border, bg = bg },
  NvimTreeFolderName       = { fg = green_bright, bold = true },
  NvimTreeRootFolder       = { fg = green_main, bold = true },
  NvimTreeOpenedFolderName = { fg = green_main },
  NvimTreeCursorLine       = { bg = green_sel },

  -- Popup menu
  Pmenu           = { fg = green_main, bg = green_ui },
  PmenuSel        = { fg = green_bright, bg = green_sel },
  PmenuSbar       = { bg = green_ui },
  PmenuThumb      = { bg = green_border },

  -- Treesitter
  ["@comment"]            = { fg = green_comment, italic = true },
  ["@keyword"]            = { fg = green_main, bold = true },
  ["@keyword.function"]   = { fg = green_main },
  ["@keyword.return"]     = { fg = green_main },
  ["@repeat"]             = { fg = green_main },
  ["@conditional"]        = { fg = green_main },
  ["@exception"]          = { fg = green_main },
  ["@include"]            = { fg = green_main },
  ["@string"]             = { fg = green_dim },
  ["@number"]             = { fg = green_main },
  ["@type"]               = { fg = green_bright, bold = true },
  ["@function"]           = { fg = green_bright },
  ["@parameter"]          = { fg = green_main },
  ["@variable"]           = { fg = green_main },
  ["@constant"]           = { fg = green_bright },
  ["@property"]           = { fg = green_main },
  ["@field"]              = { fg = green_main },
  ["@operator"]           = { fg = green_main },
}

for group, opts in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, opts)
end
