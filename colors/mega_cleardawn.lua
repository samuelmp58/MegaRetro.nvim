-- ~/.config/nvim/lua/colors/clear_dawn.lua

local bg             = "#0b0f0b"
local verde_fg       = "#7fff7f"
local verde_func     = "#99ff99"
local verde_var      = "#66ff66"
local verde_tipo     = "#44bb44"
local verde_keyword  = "#44bb44"
local verde_coment   = "#225522"
local verde_ui       = "#113311"
local verde_popup    = "#1a3d1a"
local verde_sel      = "#2e662e"
local verde_borda    = "#338833"
local verde_cursor   = "#88ff88"
local verde_const    = "#55dd55"

vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "dark"
vim.g.colors_name = "clear_dawn"

local highlights = {
  -- Sintaxe
  Comment        = { fg = verde_coment, italic = true },
  Keyword        = { fg = verde_keyword, bold = true },
  PreProc        = { fg = verde_tipo, bold = true },
  Type           = { fg = verde_tipo, bold = true },
  StorageClass   = { fg = verde_keyword, bold = true },
  Constant       = { fg = verde_const },
  Identifier     = { fg = verde_var },
  Function       = { fg = verde_func, bold = true },
  String         = { fg = verde_var, italic = true },
  Number         = { fg = verde_keyword },
  Operator       = { fg = verde_var },
  Statement      = { fg = verde_keyword, bold = true },
  Delimiter      = { fg = verde_var },
  Special        = { fg = verde_func },
  Todo           = { fg = verde_func, bold = true },

  -- UI
  Normal         = { fg = verde_fg, bg = bg },
  NormalNC       = { fg = verde_coment, bg = bg },
  EndOfBuffer    = { fg = verde_coment, bg = bg },
  LineNr         = { fg = verde_coment, bg = bg },
  CursorLineNr   = { fg = verde_cursor, bold = true },
  CursorLine     = { bg = verde_ui },
  Visual         = { bg = verde_sel },
  Search         = { fg = bg, bg = verde_keyword },
  VertSplit      = { fg = verde_borda, bg = bg },
  WinSeparator   = { fg = verde_borda, bg = bg },
  StatusLine     = { fg = verde_func, bg = bg, bold = true },
  StatusLineNC   = { fg = verde_coment, bg = bg },
  TabLine        = { fg = verde_coment, bg = verde_ui },
  TabLineSel     = { fg = verde_func, bg = verde_ui, bold = true },
  TabLineFill    = { fg = verde_ui, bg = bg },

  -- NvimTree
  NvimTreeNormal           = { fg = verde_fg, bg = bg },
  NvimTreeNormalNC         = { fg = verde_coment, bg = bg },
  NvimTreeVertSplit        = { fg = verde_borda, bg = bg },
  NvimTreeFolderName       = { fg = verde_func, bold = true },
  NvimTreeRootFolder       = { fg = verde_func, bold = true },
  NvimTreeOpenedFolderName = { fg = verde_var, bold = true },
  NvimTreeCursorLine       = { bg = verde_sel },

  -- Popup menu
  Pmenu           = { fg = verde_fg, bg = verde_popup },
  PmenuSel        = { fg = verde_func, bg = verde_ui },
  PmenuSbar       = { bg = verde_ui },
  PmenuThumb      = { bg = verde_borda },

  -- Treesitter
  ["@comment"]            = { fg = verde_coment, italic = true },
  ["@keyword"]            = { fg = verde_keyword, bold = true },
  ["@keyword.function"]   = { fg = verde_keyword, bold = true },
  ["@keyword.return"]     = { fg = verde_keyword, bold = true },
  ["@keyword.control"]    = { fg = verde_keyword, bold = true },
  ["@keyword.operator"]   = { fg = verde_keyword, bold = true },
  ["@repeat"]             = { fg = verde_keyword, bold = true },
  ["@conditional"]        = { fg = verde_keyword, bold = true },
  ["@exception"]          = { fg = verde_keyword, bold = true },
  ["@include"]            = { fg = verde_tipo, bold = true },
  ["@preproc"]            = { fg = verde_tipo, bold = true },
  ["@define"]             = { fg = verde_tipo, bold = true },
  ["@string"]             = { fg = verde_var, italic = true },
  ["@number"]             = { fg = verde_keyword },
  ["@type"]               = { fg = verde_tipo, bold = true },
  ["@function"]           = { fg = verde_func, bold = true },
  ["@parameter"]          = { fg = verde_var },
  ["@variable"]           = { fg = verde_var },
  ["@constant"]           = { fg = verde_const },
  ["@property"]           = { fg = verde_var },
  ["@field"]              = { fg = verde_var },
  ["@operator"]           = { fg = verde_var },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
