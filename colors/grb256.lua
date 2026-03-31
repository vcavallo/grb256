-- grb256 colorscheme for Neovim
-- Based on ir_black with grb256 overrides

vim.o.background = "dark"
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "grb256"

local hi = vim.api.nvim_set_hl

-- ir_black base colors
local bg = "#000000"
local fg = "#f6f3e8"

-- Base UI
hi(0, "Normal", { fg = fg, bg = bg })
hi(0, "NonText", { fg = "#585858", bg = bg })
hi(0, "SpecialKey", { fg = "#585858", bg = bg })
hi(0, "Conceal", { fg = "#585858" })

-- grb256: Comment override (lightgrey instead of ir_black's grey)
-- hi(0, "Comment", { fg = "#a8a8a8" })

-- Syntax: ir_black base
hi(0, "String", { fg = "#A8FF60" })
hi(0, "Number", { fg = "#FF73FD" })
hi(0, "Boolean", { fg = "#FF73FD" })
hi(0, "Float", { fg = "#FF73FD" })
hi(0, "Constant", { fg = "#99CC99" })
hi(0, "Character", { fg = "#99CC99" })

hi(0, "Keyword", { fg = "#96CBFE" })
hi(0, "Statement", { fg = "#6699CC" })
hi(0, "Conditional", { fg = "#6699CC" })
hi(0, "Repeat", { fg = "#6699CC" })
hi(0, "Label", { fg = "#6699CC" })
hi(0, "Exception", { fg = "#6699CC" })

hi(0, "Identifier", { fg = "#C6C5FE" })
hi(0, "Type", { fg = "#FFFFB6" })
hi(0, "Structure", { fg = "#FFFFB6" })
hi(0, "StorageClass", { fg = "#FFFFB6" })
hi(0, "Typedef", { fg = "#FFFFB6" })

hi(0, "PreProc", { fg = "#96CBFE" })
hi(0, "Include", { fg = "#96CBFE" })
hi(0, "Define", { fg = "#96CBFE" })
hi(0, "Macro", { fg = "#96CBFE" })
hi(0, "PreCondit", { fg = "#96CBFE" })

hi(0, "Special", { fg = "#E18964" })
hi(0, "SpecialChar", { fg = "#E18964" })
hi(0, "Delimiter", { fg = "#E18964" })
hi(0, "Tag", { fg = "#E18964" })

hi(0, "Title", { fg = fg, bold = true })
hi(0, "Todo", { fg = "#8f8f8f", bg = bg })

-- grb256: Function override
hi(0, "Function", { fg = "#FFD2A7" })

-- grb256: Operator override
hi(0, "Operator", { fg = "#6699CC" })

-- grb256: UI elements
hi(0, "StatusLine", { fg = "#ffffff", bg = "#585858" })
hi(0, "StatusLineNC", { fg = "#a8a8a8", bg = "#000000" })
hi(0, "VertSplit", { fg = "#a8a8a8", bg = "#000000" })
hi(0, "WinSeparator", { fg = "#a8a8a8", bg = "#000000" })
hi(0, "LineNr", { fg = "#585858" })
hi(0, "CursorLineNr", { fg = "#FFD2A7", bold = true })
hi(0, "CursorLine", { bg = "#121212" })
hi(0, "CursorColumn", { bg = "#121212" })
hi(0, "ColorColumn", { bg = "#121212" })

-- grb256: Visual
hi(0, "Visual", { bg = "#262D51" })
hi(0, "VisualNOS", { bg = "#262D51" })

-- grb256: Search
hi(0, "Search", { fg = "#000000", bg = "#FFD2A7" })
hi(0, "IncSearch", { fg = "#000000", bg = "#FFD2A7", bold = true })

-- grb256: Error / Warning
hi(0, "Error", { undercurl = true, sp = "#FF6C60" })
hi(0, "ErrorMsg", { fg = "#ffffff", bg = "#FF6C60", bold = true })
hi(0, "WarningMsg", { fg = "#ffffff", bg = "#FF6C60", bold = true })
hi(0, "SpellBad", { fg = "#ffffff", bg = "#d70000", bold = true })
hi(0, "SpellCap", { undercurl = true, sp = "#6699CC" })
hi(0, "SpellRare", { undercurl = true, sp = "#96CBFE" })

-- grb256: Diff
hi(0, "DiffAdd", { fg = "#000000", bg = "#90ee90", bold = true })
hi(0, "DiffChange", { fg = "#000000", bg = "#add8e6", bold = true })
hi(0, "DiffText", { fg = "#000000", bg = "#d3d3d3", bold = true })
hi(0, "DiffDelete", { fg = "#000000", bg = "#ee9090", bold = true })

-- grb256: Pmenu
hi(0, "Pmenu", { fg = fg, bg = "#1c1c1c" })
hi(0, "PmenuSel", { fg = "#000000", bg = "#afdf87" })
hi(0, "PmenuSbar", { bg = "#303030" })
hi(0, "PmenuThumb", { bg = "#585858" })

-- Folding
hi(0, "Folded", { fg = "#a0a8b0", bg = "#384048" })
hi(0, "FoldColumn", { fg = "#a0a8b0", bg = bg })

-- Misc UI
hi(0, "SignColumn", { fg = "#a0a8b0", bg = bg })
hi(0, "MatchParen", { fg = "#FFD2A7", bg = "#585858", bold = true })
hi(0, "Directory", { fg = "#96CBFE" })
hi(0, "ModeMsg", { fg = "#A8FF60" })
hi(0, "MoreMsg", { fg = "#A8FF60" })
hi(0, "Question", { fg = "#A8FF60" })
hi(0, "WildMenu", { fg = "#000000", bg = "#FFD2A7" })
hi(0, "TabLine", { fg = "#a8a8a8", bg = "#1c1c1c" })
hi(0, "TabLineSel", { fg = fg, bg = bg, bold = true })
hi(0, "TabLineFill", { bg = "#1c1c1c" })

-- Python-specific
hi(0, "pythonSpaceError", { bg = "#ff0000" })

-- Diagnostic highlights (for LSP)
hi(0, "DiagnosticError", { fg = "#FF6C60" })
hi(0, "DiagnosticWarn", { fg = "#FFFFB6" })
hi(0, "DiagnosticInfo", { fg = "#96CBFE" })
hi(0, "DiagnosticHint", { fg = "#a8a8a8" })
hi(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#FF6C60" })
hi(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#FFFFB6" })
hi(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#96CBFE" })
hi(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#a8a8a8" })

-- Treesitter highlights (map to base groups)
hi(0, "@comment", { link = "Comment" })
hi(0, "@string", { link = "String" })
hi(0, "@number", { link = "Number" })
hi(0, "@boolean", { link = "Boolean" })
hi(0, "@float", { link = "Float" })
hi(0, "@function", { link = "Function" })
hi(0, "@function.call", { link = "Function" })
hi(0, "@function.builtin", { fg = "#E18964" })
hi(0, "@method", { link = "Function" })
hi(0, "@method.call", { link = "Function" })
hi(0, "@keyword", { link = "Keyword" })
hi(0, "@keyword.function", { link = "Keyword" })
hi(0, "@keyword.return", { link = "Keyword" })
hi(0, "@conditional", { link = "Conditional" })
hi(0, "@repeat", { link = "Repeat" })
hi(0, "@operator", { link = "Operator" })
hi(0, "@type", { link = "Type" })
hi(0, "@type.builtin", { fg = "#FFFFB6", italic = true })
hi(0, "@variable", { fg = fg })
hi(0, "@variable.builtin", { fg = "#C6C5FE", italic = true })
hi(0, "@parameter", { fg = "#C6C5FE" })
hi(0, "@property", { fg = "#C6C5FE" })
hi(0, "@field", { fg = "#C6C5FE" })
hi(0, "@constant", { link = "Constant" })
hi(0, "@constant.builtin", { fg = "#FF73FD" })
hi(0, "@punctuation", { fg = "#a8a8a8" })
hi(0, "@punctuation.bracket", { fg = "#c0c0c0" })
hi(0, "@punctuation.delimiter", { fg = "#a8a8a8" })
hi(0, "@tag", { link = "Tag" })
hi(0, "@tag.attribute", { fg = "#FFD2A7" })
hi(0, "@tag.delimiter", { fg = "#a8a8a8" })
hi(0, "@include", { link = "Include" })
hi(0, "@constructor", { fg = "#FFFFB6" })
hi(0, "@namespace", { fg = "#C6C5FE" })

-- Git signs
hi(0, "GitSignsAdd", { fg = "#A8FF60" })
hi(0, "GitSignsChange", { fg = "#96CBFE" })
hi(0, "GitSignsDelete", { fg = "#FF6C60" })

-- Telescope
hi(0, "TelescopeNormal", { fg = fg, bg = "#0a0a0a" })
hi(0, "TelescopeBorder", { fg = "#585858", bg = "#0a0a0a" })
hi(0, "TelescopeSelection", { bg = "#262D51" })
hi(0, "TelescopeMatching", { fg = "#FFD2A7", bold = true })

-- Indent guides
hi(0, "IblIndent", { fg = "#1c1c1c" })
hi(0, "IblScope", { fg = "#585858" })

-- Notify
hi(0, "NotifyERRORBorder", { fg = "#FF6C60" })
hi(0, "NotifyWARNBorder", { fg = "#FFFFB6" })
hi(0, "NotifyINFOBorder", { fg = "#96CBFE" })
hi(0, "NotifyERRORTitle", { fg = "#FF6C60" })
hi(0, "NotifyWARNTitle", { fg = "#FFFFB6" })
hi(0, "NotifyINFOTitle", { fg = "#96CBFE" })

-- NeoTree
hi(0, "NeoTreeNormal", { fg = fg, bg = "#080808" })
hi(0, "NeoTreeNormalNC", { fg = fg, bg = "#080808" })
hi(0, "NeoTreeDirectoryName", { fg = "#96CBFE" })
hi(0, "NeoTreeDirectoryIcon", { fg = "#96CBFE" })
hi(0, "NeoTreeFileName", { fg = fg })
hi(0, "NeoTreeFileNameOpened", { fg = fg, bold = true })
hi(0, "NeoTreeRootName", { fg = "#FFD2A7", bold = true })
hi(0, "NeoTreeDimText", { fg = "#585858" })
hi(0, "NeoTreeDotfile", { fg = "#585858" })
hi(0, "NeoTreeIndentMarker", { fg = "#303030" })
hi(0, "NeoTreeExpander", { fg = "#a8a8a8" })
hi(0, "NeoTreeFilterTerm", { fg = "#A8FF60", bold = true })
hi(0, "NeoTreeFloatBorder", { fg = "#585858", bg = "#080808" })
hi(0, "NeoTreeFloatTitle", { fg = "#FFD2A7", bold = true })
hi(0, "NeoTreeTitleBar", { fg = "#000000", bg = "#96CBFE", bold = true })
hi(0, "NeoTreeGitModified", { fg = "#96CBFE" })
hi(0, "NeoTreeGitAdded", { fg = "#A8FF60" })
hi(0, "NeoTreeGitDeleted", { fg = "#FF6C60" })
hi(0, "NeoTreeGitUntracked", { fg = "#FFFFB6" })
hi(0, "NeoTreeGitConflict", { fg = "#FF6C60", bold = true })

-- WhichKey
hi(0, "WhichKey", { fg = "#FFD2A7" })
hi(0, "WhichKeyGroup", { fg = "#96CBFE" })
hi(0, "WhichKeyDesc", { fg = fg })
hi(0, "WhichKeySeparator", { fg = "#585858" })

-- Mini (statusline, etc.)
hi(0, "MiniStatuslineFilename", { fg = fg, bg = "#1c1c1c" })
hi(0, "MiniStatuslineDevinfo", { fg = fg, bg = "#303030" })
hi(0, "MiniStatuslineModeNormal", { fg = "#000000", bg = "#96CBFE", bold = true })
hi(0, "MiniStatuslineModeInsert", { fg = "#000000", bg = "#A8FF60", bold = true })
hi(0, "MiniStatuslineModeVisual", { fg = "#000000", bg = "#FF73FD", bold = true })
hi(0, "MiniStatuslineModeCommand", { fg = "#000000", bg = "#FFD2A7", bold = true })
hi(0, "MiniStatuslineModeReplace", { fg = "#000000", bg = "#FF6C60", bold = true })

-- Flash (for navigation)
hi(0, "FlashLabel", { fg = "#000000", bg = "#FF73FD", bold = true })
hi(0, "FlashMatch", { fg = "#FFD2A7" })
hi(0, "FlashCurrent", { fg = "#A8FF60" })

-- Lazy.nvim UI
hi(0, "LazyH1", { fg = "#000000", bg = "#96CBFE", bold = true })
hi(0, "LazyButton", { fg = fg, bg = "#1c1c1c" })
hi(0, "LazyButtonActive", { fg = "#000000", bg = "#FFD2A7", bold = true })

-- Noice / cmdline
hi(0, "NoiceCmdlinePopupBorder", { fg = "#585858" })
hi(0, "NoiceCmdlineIcon", { fg = "#96CBFE" })

-- Snacks (file picker, explorer, dashboard, etc.)
hi(0, "SnacksPickerDir", { fg = "#a8a8a8" })
hi(0, "SnacksPickerPathHidden", { fg = "#a8a8a8" })
hi(0, "SnacksPickerPathIgnored", { fg = "#585858" })
hi(0, "SnacksPickerFile", { fg = fg })
hi(0, "SnacksPickerDirectory", { fg = "#96CBFE" })
hi(0, "SnacksPickerTree", { fg = "#585858" })
hi(0, "SnacksPickerDimmed", { fg = "#585858" })
hi(0, "SnacksPickerMatch", { fg = "#FFD2A7", bold = true })
hi(0, "SnacksPickerBorder", { fg = "#585858", bg = "#0a0a0a" })
hi(0, "SnacksPickerTitle", { fg = "#FFD2A7", bold = true })
hi(0, "SnacksPickerNormal", { fg = fg, bg = "#0a0a0a" })
hi(0, "SnacksPickerPreview", { fg = fg, bg = "#0a0a0a" })
hi(0, "SnacksPickerSelection", { bg = "#262D51" })
hi(0, "SnacksPickerListCursorLine", { bg = "#262D51" })
hi(0, "SnacksPickerPrompt", { fg = "#96CBFE" })
hi(0, "SnacksDashboardHeader", { fg = "#96CBFE" })
hi(0, "SnacksDashboardFooter", { fg = "#585858" })
hi(0, "SnacksDashboardKey", { fg = "#FFD2A7" })
hi(0, "SnacksDashboardDesc", { fg = fg })
hi(0, "SnacksDashboardIcon", { fg = "#96CBFE" })
hi(0, "SnacksNormal", { fg = fg, bg = "#0a0a0a" })
hi(0, "SnacksBorder", { fg = "#585858", bg = "#0a0a0a" })

-- Float windows
hi(0, "NormalFloat", { fg = fg, bg = "#0a0a0a" })
hi(0, "FloatBorder", { fg = "#585858", bg = "#0a0a0a" })
hi(0, "FloatTitle", { fg = "#FFD2A7", bold = true })
