local bg            = "#0a0905"
local amber_main    = "#ffaa33"
local amber_dim     = "#cc9933"
local amber_dark    = "#996600"
local amber_ui      = "#331f00"
local amber_sel     = "#442b00"
local amber_cursor  = "#ffbb55"
local amber_border  = "#aa7722"
local amber_const   = "#ffcc77"

vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "dark"
vim.g.colors_name = "mega_retro_amber"

local highlights = {
  -- Sintaxe
  Comment        = { fg = amber_dark, italic = true },
  Keyword        = { fg = amber_main, bold = true },
  PreProc        = { fg = amber_const },
  Type           = { fg = amber_const, bold = true },
  StorageClass   = { fg = amber_main },
  Constant       = { fg = amber_const },
  Identifier     = { fg = amber_main },
  Function       = { fg = amber_const },
  String         = { fg = amber_dim },
  Number         = { fg = amber_const },
  Operator       = { fg = amber_main },
  Statement      = { fg = amber_main },
  Delimiter      = { fg = amber_main },
  Special        = { fg = amber_const },
  Todo           = { fg = amber_main, bold = true },

  -- UI
  Normal         = { fg = amber_main, bg = bg },
  NormalNC       = { fg = amber_dark, bg = bg },
  EndOfBuffer    = { fg = amber_ui, bg = bg },
  LineNr         = { fg = amber_dark, bg = bg },
  CursorLineNr   = { fg = amber_cursor, bold = true },
  CursorLine     = { bg = amber_ui },
  Visual         = { bg = amber_sel },
  Search         = { fg = bg, bg = amber_main },
  VertSplit      = { fg = amber_border, bg = bg },
  WinSeparator   = { fg = amber_border, bg = bg },
  StatusLine     = { fg = amber_main, bg = bg, bold = true },
  StatusLineNC   = { fg = amber_dark, bg = bg },
  TabLine        = { fg = amber_dark, bg = amber_ui },
  TabLineSel     = { fg = amber_main, bg = amber_ui, bold = true },
  TabLineFill    = { fg = amber_ui, bg = bg },

  -- NvimTree
  NvimTreeNormal           = { fg = amber_main, bg = bg },
  NvimTreeNormalNC         = { fg = amber_dark, bg = bg },
  NvimTreeVertSplit        = { fg = amber_border, bg = bg },
  NvimTreeFolderName       = { fg = amber_const, bold = true },
  NvimTreeRootFolder       = { fg = amber_main, bold = true },
  NvimTreeOpenedFolderName = { fg = amber_main },
  NvimTreeCursorLine       = { bg = amber_sel },

  -- Popup menu
  Pmenu           = { fg = amber_main, bg = amber_ui },
  PmenuSel        = { fg = amber_const, bg = amber_sel },
  PmenuSbar       = { bg = amber_ui },
  PmenuThumb      = { bg = amber_border },

  -- Treesitter
  ["@comment"]            = { fg = amber_dark, italic = true },
  ["@keyword"]            = { fg = amber_main, bold = true },
  ["@keyword.function"]   = { fg = amber_main },
  ["@keyword.return"]     = { fg = amber_main },
  ["@repeat"]             = { fg = amber_main },
  ["@conditional"]        = { fg = amber_main },
  ["@exception"]          = { fg = amber_main },
  ["@include"]            = { fg = amber_const },
  ["@string"]             = { fg = amber_dim },
  ["@number"]             = { fg = amber_const },
  ["@type"]               = { fg = amber_const, bold = true },
  ["@function"]           = { fg = amber_const },
  ["@parameter"]          = { fg = amber_main },
  ["@variable"]           = { fg = amber_main },
  ["@constant"]           = { fg = amber_const },
  ["@property"]           = { fg = amber_main },
  ["@field"]              = { fg = amber_main },
  ["@operator"]           = { fg = amber_main },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
