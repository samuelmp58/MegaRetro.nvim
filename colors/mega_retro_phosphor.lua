local bg            = "#010a15"
local blue_main     = "#33aaff"
local blue_dim      = "#2277aa"
local blue_dark     = "#115577"
local blue_ui       = "#002233"
local blue_sel      = "#004466"
local blue_cursor   = "#66ccff"
local blue_border   = "#226688"
local blue_const    = "#55bbff"

vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "dark"
vim.g.colors_name = "mega_retro_phosphor"

local highlights = {
  -- Sintaxe
  Comment        = { fg = blue_dark, italic = true },
  Keyword        = { fg = blue_main, bold = true },
  PreProc        = { fg = blue_const },
  Type           = { fg = blue_const, bold = true },
  StorageClass   = { fg = blue_main },
  Constant       = { fg = blue_const },
  Identifier     = { fg = blue_main },
  Function       = { fg = blue_const },
  String         = { fg = blue_dim },
  Number         = { fg = blue_const },
  Operator       = { fg = blue_main },
  Statement      = { fg = blue_main },
  Delimiter      = { fg = blue_main },
  Special        = { fg = blue_const },
  Todo           = { fg = blue_main, bold = true },

  -- UI
  Normal         = { fg = blue_main, bg = bg },
  NormalNC       = { fg = blue_dark, bg = bg },
  EndOfBuffer    = { fg = blue_ui, bg = bg },
  LineNr         = { fg = blue_dark, bg = bg },
  CursorLineNr   = { fg = blue_cursor, bold = true },
  CursorLine     = { bg = blue_ui },
  Visual         = { bg = blue_sel },
  Search         = { fg = bg, bg = blue_main },
  VertSplit      = { fg = blue_border, bg = bg },
  WinSeparator   = { fg = blue_border, bg = bg },
  StatusLine     = { fg = blue_main, bg = bg, bold = true },
  StatusLineNC   = { fg = blue_dark, bg = bg },
  TabLine        = { fg = blue_dark, bg = blue_ui },
  TabLineSel     = { fg = blue_main, bg = blue_ui, bold = true },
  TabLineFill    = { fg = blue_ui, bg = bg },

  -- NvimTree
  NvimTreeNormal           = { fg = blue_main, bg = bg },
  NvimTreeNormalNC         = { fg = blue_dark, bg = bg },
  NvimTreeVertSplit        = { fg = blue_border, bg = bg },
  NvimTreeFolderName       = { fg = blue_const, bold = true },
  NvimTreeRootFolder       = { fg = blue_main, bold = true },
  NvimTreeOpenedFolderName = { fg = blue_main },
  NvimTreeCursorLine       = { bg = blue_sel },

  -- Popup menu
  Pmenu           = { fg = blue_main, bg = blue_ui },
  PmenuSel        = { fg = blue_const, bg = blue_sel },
  PmenuSbar       = { bg = blue_ui },
  PmenuThumb      = { bg = blue_border },

  -- Treesitter
  ["@comment"]            = { fg = blue_dark, italic = true },
  ["@keyword"]            = { fg = blue_main, bold = true },
  ["@keyword.function"]   = { fg = blue_main },
  ["@keyword.return"]     = { fg = blue_main },
  ["@repeat"]             = { fg = blue_main },
  ["@conditional"]        = { fg = blue_main },
  ["@exception"]          = { fg = blue_main },
  ["@include"]            = { fg = blue_const },
  ["@string"]             = { fg = blue_dim },
  ["@number"]             = { fg = blue_const },
  ["@type"]               = { fg = blue_const, bold = true },
  ["@function"]           = { fg = blue_const },
  ["@parameter"]          = { fg = blue_main },
  ["@variable"]           = { fg = blue_main },
  ["@constant"]           = { fg = blue_const },
  ["@property"]           = { fg = blue_main },
  ["@field"]              = { fg = blue_main },
  ["@operator"]           = { fg = blue_main },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
