-- undefined.lua
-- A Neovim colorscheme matching vscode-theme-undefined
-- Based on Atom One Dark with semantic color usage

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "undefined"
vim.o.termguicolors = true

-- Color palette
local colors = {
  black = "#1E2127",
  dark_grey = "#282C34",
  grey = "#5C6370",
  light_grey = "#ABB2BF",
  green = "#98C379",
  red = "#E06C75",
  yellow = "#D19A66",
  blue = "#61AFEF",
  magenta = "#C678DD",
  cyan = "#56B6C2",
  -- UI specific
  bg = "#282C34",
  fg = "#ABB2BF",
  line_highlight = "#30353E",
  selection = "#30353E",
  sidebar = "#20232A",
  scrollbar = "#181A1F",
  find_match = "#AF42CF",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI
hi("Normal", { fg = colors.fg, bg = colors.bg })
hi("NormalFloat", { fg = colors.fg, bg = colors.sidebar })
hi("FloatBorder", { fg = colors.grey, bg = colors.sidebar })
hi("Cursor", { fg = colors.bg, bg = colors.fg })
hi("CursorLine", { bg = colors.line_highlight })
hi("CursorColumn", { bg = colors.line_highlight })
hi("ColorColumn", { bg = colors.line_highlight })
hi("LineNr", { fg = colors.grey })
hi("CursorLineNr", { fg = colors.fg })
hi("SignColumn", { bg = colors.bg })
hi("VertSplit", { fg = colors.sidebar })
hi("WinSeparator", { fg = colors.sidebar })
hi("StatusLine", { fg = colors.fg, bg = colors.scrollbar })
hi("StatusLineNC", { fg = colors.grey, bg = colors.scrollbar })
hi("TabLine", { fg = colors.grey, bg = colors.sidebar })
hi("TabLineFill", { bg = colors.sidebar })
hi("TabLineSel", { fg = colors.fg, bg = colors.bg })
hi("Pmenu", { fg = colors.fg, bg = colors.sidebar })
hi("PmenuSel", { fg = colors.fg, bg = colors.selection })
hi("PmenuSbar", { bg = colors.scrollbar })
hi("PmenuThumb", { bg = colors.grey })
hi("Visual", { bg = colors.selection })
hi("VisualNOS", { bg = colors.selection })
hi("Search", { fg = colors.black, bg = colors.find_match })
hi("IncSearch", { fg = colors.black, bg = colors.find_match })
hi("CurSearch", { fg = colors.black, bg = colors.find_match })
hi("Substitute", { fg = colors.black, bg = colors.yellow })
hi("MatchParen", { fg = colors.cyan, bold = true })
hi("Folded", { fg = colors.grey, bg = colors.sidebar })
hi("FoldColumn", { fg = colors.grey, bg = colors.bg })
hi("Directory", { fg = colors.cyan })
hi("Title", { fg = colors.cyan, bold = true })
hi("ErrorMsg", { fg = colors.red })
hi("WarningMsg", { fg = colors.yellow })
hi("ModeMsg", { fg = colors.fg })
hi("MoreMsg", { fg = colors.cyan })
hi("Question", { fg = colors.cyan })
hi("NonText", { fg = colors.grey })
hi("SpecialKey", { fg = colors.grey })
hi("Whitespace", { fg = colors.grey })
hi("EndOfBuffer", { fg = colors.bg })
hi("Conceal", { fg = colors.grey })
hi("WildMenu", { fg = colors.fg, bg = colors.selection })
hi("QuickFixLine", { bg = colors.selection })
hi("qfFileName", { fg = colors.cyan })
hi("qfLineNr", { fg = colors.yellow })

-- Diff
hi("DiffAdd", { fg = colors.green, bg = colors.black })
hi("DiffChange", { fg = colors.yellow, bg = colors.black })
hi("DiffDelete", { fg = colors.red, bg = colors.black })
hi("DiffText", { fg = colors.cyan, bg = colors.black })
hi("diffAdded", { fg = colors.green })
hi("diffRemoved", { fg = colors.red })
hi("diffChanged", { fg = colors.yellow })

-- Syntax highlighting (semantic colors)
-- Defaults (lightGrey) - variables, properties, general code
hi("Identifier", { fg = colors.light_grey })
hi("Function", { fg = colors.cyan }) -- function calls in cyan
hi("Statement", { fg = colors.grey }) -- keywords are non-essential
hi("Conditional", { fg = colors.grey })
hi("Repeat", { fg = colors.grey })
hi("Label", { fg = colors.grey })
hi("Keyword", { fg = colors.grey })
hi("Exception", { fg = colors.grey })
hi("PreProc", { fg = colors.grey })
hi("Include", { fg = colors.grey })
hi("Define", { fg = colors.grey })
hi("Macro", { fg = colors.grey })
hi("PreCondit", { fg = colors.grey })
hi("Type", { fg = colors.grey }) -- type annotations are non-essential
hi("StorageClass", { fg = colors.grey })
hi("Structure", { fg = colors.grey })
hi("Typedef", { fg = colors.grey })

-- Operators (yellow)
hi("Operator", { fg = colors.yellow })

-- Literals (green)
hi("Constant", { fg = colors.green })
hi("String", { fg = colors.green })
hi("Character", { fg = colors.green })
hi("Number", { fg = colors.green })
hi("Boolean", { fg = colors.green })
hi("Float", { fg = colors.green })

-- Attention seekers (red)
hi("Comment", { fg = colors.red, italic = true })
hi("SpecialComment", { fg = colors.red, italic = true })
hi("Todo", { fg = colors.red, bold = true })
hi("Debug", { fg = colors.red })

-- Special/Punctuation (grey - non-essential)
hi("Special", { fg = colors.grey })
hi("SpecialChar", { fg = colors.green })
hi("Tag", { fg = colors.light_grey })
hi("Delimiter", { fg = colors.grey })

-- Errors and warnings
hi("Error", { fg = colors.red })
hi("Underlined", { fg = colors.cyan, underline = true })
hi("Ignore", { fg = colors.grey })

-- Spell
hi("SpellBad", { sp = colors.red, undercurl = true })
hi("SpellCap", { sp = colors.yellow, undercurl = true })
hi("SpellLocal", { sp = colors.cyan, undercurl = true })
hi("SpellRare", { sp = colors.magenta, undercurl = true })

-- Treesitter highlights
hi("@variable", { fg = colors.light_grey })
hi("@variable.builtin", { fg = colors.red }) -- this, self, super
hi("@variable.parameter", { fg = colors.light_grey })
hi("@variable.member", { fg = colors.light_grey })
hi("@constant", { fg = colors.green })
hi("@constant.builtin", { fg = colors.green })
hi("@constant.macro", { fg = colors.green })
hi("@module", { fg = colors.light_grey })
hi("@label", { fg = colors.grey })

hi("@string", { fg = colors.green })
hi("@string.documentation", { fg = colors.red })
hi("@string.regex", { fg = colors.green })
hi("@string.escape", { fg = colors.green })
hi("@string.special", { fg = colors.green })
hi("@character", { fg = colors.green })
hi("@character.special", { fg = colors.green })
hi("@boolean", { fg = colors.green })
hi("@number", { fg = colors.green })
hi("@number.float", { fg = colors.green })

hi("@type", { fg = colors.grey })
hi("@type.builtin", { fg = colors.grey })
hi("@type.definition", { fg = colors.grey })
hi("@type.qualifier", { fg = colors.grey })
hi("@attribute", { fg = colors.grey })
hi("@property", { fg = colors.light_grey })

hi("@function", { fg = colors.light_grey })
hi("@function.builtin", { fg = colors.cyan })
hi("@function.call", { fg = colors.cyan })
hi("@function.macro", { fg = colors.cyan })
hi("@function.method", { fg = colors.light_grey })
hi("@function.method.call", { fg = colors.cyan })
hi("@constructor", { fg = colors.cyan })

hi("@operator", { fg = colors.yellow })
hi("@keyword", { fg = colors.grey })
hi("@keyword.coroutine", { fg = colors.grey })
hi("@keyword.function", { fg = colors.grey })
hi("@keyword.operator", { fg = colors.yellow })
hi("@keyword.import", { fg = colors.grey })
hi("@keyword.storage", { fg = colors.grey })
hi("@keyword.repeat", { fg = colors.grey })
hi("@keyword.return", { fg = colors.grey })
hi("@keyword.debug", { fg = colors.red })
hi("@keyword.exception", { fg = colors.grey })
hi("@keyword.conditional", { fg = colors.grey })
hi("@keyword.directive", { fg = colors.grey })

hi("@punctuation.delimiter", { fg = colors.grey })
hi("@punctuation.bracket", { fg = colors.grey })
hi("@punctuation.special", { fg = colors.grey })

hi("@comment", { fg = colors.red, italic = true })
hi("@comment.documentation", { fg = colors.red, italic = true })
hi("@comment.error", { fg = colors.red, bold = true })
hi("@comment.warning", { fg = colors.yellow })
hi("@comment.todo", { fg = colors.red, bold = true })
hi("@comment.note", { fg = colors.cyan })

hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.heading", { fg = colors.cyan, bold = true })
hi("@markup.quote", { fg = colors.grey, italic = true })
hi("@markup.math", { fg = colors.green })
hi("@markup.environment", { fg = colors.grey })
hi("@markup.link", { fg = colors.cyan, underline = true })
hi("@markup.link.label", { fg = colors.cyan })
hi("@markup.link.url", { fg = colors.green, underline = true })
hi("@markup.raw", { fg = colors.green })
hi("@markup.raw.block", { fg = colors.green })
hi("@markup.list", { fg = colors.grey })
hi("@markup.list.checked", { fg = colors.green })
hi("@markup.list.unchecked", { fg = colors.grey })

hi("@diff.plus", { fg = colors.green })
hi("@diff.minus", { fg = colors.red })
hi("@diff.delta", { fg = colors.yellow })

hi("@tag", { fg = colors.light_grey })
hi("@tag.attribute", { fg = colors.light_grey })
hi("@tag.delimiter", { fg = colors.grey })

-- LSP semantic tokens
hi("@lsp.type.class", { fg = colors.light_grey })
hi("@lsp.type.decorator", { fg = colors.grey })
hi("@lsp.type.enum", { fg = colors.grey })
hi("@lsp.type.enumMember", { fg = colors.green })
hi("@lsp.type.function", { fg = colors.light_grey })
hi("@lsp.type.interface", { fg = colors.grey })
hi("@lsp.type.macro", { fg = colors.cyan })
hi("@lsp.type.method", { fg = colors.light_grey })
hi("@lsp.type.namespace", { fg = colors.light_grey })
hi("@lsp.type.parameter", { fg = colors.light_grey })
hi("@lsp.type.property", { fg = colors.light_grey })
hi("@lsp.type.struct", { fg = colors.grey })
hi("@lsp.type.type", { fg = colors.grey })
hi("@lsp.type.typeParameter", { fg = colors.grey })
hi("@lsp.type.variable", { fg = colors.light_grey })
hi("@lsp.mod.defaultLibrary", { fg = colors.cyan })

-- LSP diagnostics
hi("DiagnosticError", { fg = colors.red })
hi("DiagnosticWarn", { fg = colors.yellow })
hi("DiagnosticInfo", { fg = colors.cyan })
hi("DiagnosticHint", { fg = colors.grey })
hi("DiagnosticOk", { fg = colors.green })
hi("DiagnosticUnderlineError", { sp = colors.red, undercurl = true })
hi("DiagnosticUnderlineWarn", { sp = colors.yellow, undercurl = true })
hi("DiagnosticUnderlineInfo", { sp = colors.cyan, undercurl = true })
hi("DiagnosticUnderlineHint", { sp = colors.grey, undercurl = true })
hi("DiagnosticUnderlineOk", { sp = colors.green, undercurl = true })
hi("DiagnosticVirtualTextError", { fg = colors.red })
hi("DiagnosticVirtualTextWarn", { fg = colors.yellow })
hi("DiagnosticVirtualTextInfo", { fg = colors.cyan })
hi("DiagnosticVirtualTextHint", { fg = colors.grey })
hi("DiagnosticVirtualTextOk", { fg = colors.green })
hi("DiagnosticFloatingError", { fg = colors.red })
hi("DiagnosticFloatingWarn", { fg = colors.yellow })
hi("DiagnosticFloatingInfo", { fg = colors.cyan })
hi("DiagnosticFloatingHint", { fg = colors.grey })
hi("DiagnosticFloatingOk", { fg = colors.green })
hi("DiagnosticSignError", { fg = colors.red })
hi("DiagnosticSignWarn", { fg = colors.yellow })
hi("DiagnosticSignInfo", { fg = colors.cyan })
hi("DiagnosticSignHint", { fg = colors.grey })
hi("DiagnosticSignOk", { fg = colors.green })
hi("LspReferenceText", { bg = colors.selection })
hi("LspReferenceRead", { bg = colors.selection })
hi("LspReferenceWrite", { bg = colors.selection })
hi("LspCodeLens", { fg = colors.grey })
hi("LspCodeLensSeparator", { fg = colors.grey })
hi("LspSignatureActiveParameter", { fg = colors.cyan, bold = true })

-- Git signs
hi("GitSignsAdd", { fg = colors.green })
hi("GitSignsChange", { fg = colors.yellow })
hi("GitSignsDelete", { fg = colors.red })
hi("GitSignsAddNr", { fg = colors.green })
hi("GitSignsChangeNr", { fg = colors.yellow })
hi("GitSignsDeleteNr", { fg = colors.red })
hi("GitSignsAddLn", { bg = "#2a3a2a" })
hi("GitSignsChangeLn", { bg = "#3a3a2a" })
hi("GitSignsDeleteLn", { bg = "#3a2a2a" })

-- Telescope
hi("TelescopeNormal", { fg = colors.fg, bg = colors.sidebar })
hi("TelescopeBorder", { fg = colors.grey, bg = colors.sidebar })
hi("TelescopePromptNormal", { fg = colors.fg, bg = colors.bg })
hi("TelescopePromptBorder", { fg = colors.grey, bg = colors.bg })
hi("TelescopePromptTitle", { fg = colors.cyan, bold = true })
hi("TelescopePreviewTitle", { fg = colors.cyan, bold = true })
hi("TelescopeResultsTitle", { fg = colors.cyan, bold = true })
hi("TelescopeSelection", { bg = colors.selection })
hi("TelescopeSelectionCaret", { fg = colors.cyan })
hi("TelescopeMatching", { fg = colors.find_match, bold = true })

-- nvim-tree
hi("NvimTreeNormal", { fg = colors.fg, bg = colors.sidebar })
hi("NvimTreeNormalNC", { fg = colors.fg, bg = colors.sidebar })
hi("NvimTreeRootFolder", { fg = colors.cyan, bold = true })
hi("NvimTreeFolderName", { fg = colors.fg })
hi("NvimTreeFolderIcon", { fg = colors.cyan })
hi("NvimTreeEmptyFolderName", { fg = colors.grey })
hi("NvimTreeOpenedFolderName", { fg = colors.fg })
hi("NvimTreeExecFile", { fg = colors.green })
hi("NvimTreeOpenedFile", { fg = colors.cyan })
hi("NvimTreeSpecialFile", { fg = colors.yellow })
hi("NvimTreeImageFile", { fg = colors.magenta })
hi("NvimTreeIndentMarker", { fg = colors.grey })
hi("NvimTreeGitDirty", { fg = colors.yellow })
hi("NvimTreeGitStaged", { fg = colors.green })
hi("NvimTreeGitMerge", { fg = colors.cyan })
hi("NvimTreeGitRenamed", { fg = colors.magenta })
hi("NvimTreeGitNew", { fg = colors.green })
hi("NvimTreeGitDeleted", { fg = colors.red })

-- Neo-tree
hi("NeoTreeNormal", { fg = colors.fg, bg = colors.sidebar })
hi("NeoTreeNormalNC", { fg = colors.fg, bg = colors.sidebar })
hi("NeoTreeDirectoryName", { fg = colors.fg })
hi("NeoTreeDirectoryIcon", { fg = colors.cyan })
hi("NeoTreeRootName", { fg = colors.cyan, bold = true })
hi("NeoTreeFileName", { fg = colors.fg })
hi("NeoTreeFileIcon", { fg = colors.fg })
hi("NeoTreeFileNameOpened", { fg = colors.cyan })
hi("NeoTreeIndentMarker", { fg = colors.grey })
hi("NeoTreeGitAdded", { fg = colors.green })
hi("NeoTreeGitConflict", { fg = colors.red })
hi("NeoTreeGitDeleted", { fg = colors.red })
hi("NeoTreeGitIgnored", { fg = colors.grey })
hi("NeoTreeGitModified", { fg = colors.yellow })
hi("NeoTreeGitUntracked", { fg = colors.grey })
hi("NeoTreeTitleBar", { fg = colors.fg, bg = colors.scrollbar })

-- Indent blankline
hi("IndentBlanklineChar", { fg = colors.scrollbar })
hi("IndentBlanklineContextChar", { fg = colors.grey })
hi("IblIndent", { fg = colors.scrollbar })
hi("IblScope", { fg = colors.grey })

-- Which-key
hi("WhichKey", { fg = colors.cyan })
hi("WhichKeyGroup", { fg = colors.yellow })
hi("WhichKeyDesc", { fg = colors.fg })
hi("WhichKeySeparator", { fg = colors.grey })
hi("WhichKeyFloat", { bg = colors.sidebar })
hi("WhichKeyBorder", { fg = colors.grey, bg = colors.sidebar })
hi("WhichKeyValue", { fg = colors.grey })

-- nvim-cmp
hi("CmpItemAbbr", { fg = colors.fg })
hi("CmpItemAbbrDeprecated", { fg = colors.grey, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = colors.cyan, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = colors.cyan })
hi("CmpItemKind", { fg = colors.grey })
hi("CmpItemKindClass", { fg = colors.yellow })
hi("CmpItemKindColor", { fg = colors.magenta })
hi("CmpItemKindConstant", { fg = colors.green })
hi("CmpItemKindConstructor", { fg = colors.cyan })
hi("CmpItemKindEnum", { fg = colors.yellow })
hi("CmpItemKindEnumMember", { fg = colors.green })
hi("CmpItemKindEvent", { fg = colors.yellow })
hi("CmpItemKindField", { fg = colors.light_grey })
hi("CmpItemKindFile", { fg = colors.fg })
hi("CmpItemKindFolder", { fg = colors.cyan })
hi("CmpItemKindFunction", { fg = colors.cyan })
hi("CmpItemKindInterface", { fg = colors.yellow })
hi("CmpItemKindKeyword", { fg = colors.grey })
hi("CmpItemKindMethod", { fg = colors.cyan })
hi("CmpItemKindModule", { fg = colors.light_grey })
hi("CmpItemKindOperator", { fg = colors.yellow })
hi("CmpItemKindProperty", { fg = colors.light_grey })
hi("CmpItemKindReference", { fg = colors.light_grey })
hi("CmpItemKindSnippet", { fg = colors.green })
hi("CmpItemKindStruct", { fg = colors.yellow })
hi("CmpItemKindText", { fg = colors.fg })
hi("CmpItemKindTypeParameter", { fg = colors.grey })
hi("CmpItemKindUnit", { fg = colors.green })
hi("CmpItemKindValue", { fg = colors.green })
hi("CmpItemKindVariable", { fg = colors.light_grey })
hi("CmpItemMenu", { fg = colors.grey })

-- Lazy.nvim
hi("LazyH1", { fg = colors.cyan, bold = true })
hi("LazyButton", { fg = colors.fg, bg = colors.selection })
hi("LazyButtonActive", { fg = colors.bg, bg = colors.cyan })
hi("LazySpecial", { fg = colors.cyan })
hi("LazyProgressDone", { fg = colors.green })
hi("LazyProgressTodo", { fg = colors.grey })

-- Mason
hi("MasonNormal", { fg = colors.fg, bg = colors.sidebar })
hi("MasonHeader", { fg = colors.bg, bg = colors.cyan, bold = true })
hi("MasonHeaderSecondary", { fg = colors.bg, bg = colors.yellow, bold = true })
hi("MasonHighlight", { fg = colors.cyan })
hi("MasonHighlightBlock", { fg = colors.bg, bg = colors.cyan })
hi("MasonHighlightBlockBold", { fg = colors.bg, bg = colors.cyan, bold = true })
hi("MasonHighlightSecondary", { fg = colors.yellow })
hi("MasonMuted", { fg = colors.grey })
hi("MasonMutedBlock", { fg = colors.bg, bg = colors.grey })

-- Notify
hi("NotifyERRORBorder", { fg = colors.red })
hi("NotifyWARNBorder", { fg = colors.yellow })
hi("NotifyINFOBorder", { fg = colors.cyan })
hi("NotifyDEBUGBorder", { fg = colors.grey })
hi("NotifyTRACEBorder", { fg = colors.magenta })
hi("NotifyERRORIcon", { fg = colors.red })
hi("NotifyWARNIcon", { fg = colors.yellow })
hi("NotifyINFOIcon", { fg = colors.cyan })
hi("NotifyDEBUGIcon", { fg = colors.grey })
hi("NotifyTRACEIcon", { fg = colors.magenta })
hi("NotifyERRORTitle", { fg = colors.red })
hi("NotifyWARNTitle", { fg = colors.yellow })
hi("NotifyINFOTitle", { fg = colors.cyan })
hi("NotifyDEBUGTitle", { fg = colors.grey })
hi("NotifyTRACETitle", { fg = colors.magenta })

-- Dashboard / Alpha
hi("DashboardHeader", { fg = colors.cyan })
hi("DashboardCenter", { fg = colors.fg })
hi("DashboardFooter", { fg = colors.grey })
hi("DashboardShortcut", { fg = colors.yellow })
hi("AlphaHeader", { fg = colors.cyan })
hi("AlphaButtons", { fg = colors.fg })
hi("AlphaShortcut", { fg = colors.yellow })
hi("AlphaFooter", { fg = colors.grey })

-- Trouble
hi("TroubleNormal", { fg = colors.fg, bg = colors.sidebar })
hi("TroubleText", { fg = colors.fg })
hi("TroubleCount", { fg = colors.cyan, bg = colors.selection })
hi("TroubleFile", { fg = colors.fg })
hi("TroubleFoldIcon", { fg = colors.grey })
hi("TroubleLocation", { fg = colors.grey })
hi("TroublePreview", { fg = colors.cyan })
hi("TroubleSignError", { fg = colors.red })
hi("TroubleSignWarning", { fg = colors.yellow })
hi("TroubleSignInformation", { fg = colors.cyan })
hi("TroubleSignHint", { fg = colors.grey })

-- Illuminate
hi("IlluminatedWordText", { bg = colors.selection })
hi("IlluminatedWordRead", { bg = colors.selection })
hi("IlluminatedWordWrite", { bg = colors.selection })

-- Mini
hi("MiniStatuslineDevinfo", { fg = colors.fg, bg = colors.selection })
hi("MiniStatuslineFileinfo", { fg = colors.fg, bg = colors.selection })
hi("MiniStatuslineFilename", { fg = colors.fg, bg = colors.sidebar })
hi("MiniStatuslineInactive", { fg = colors.grey, bg = colors.sidebar })
hi("MiniStatuslineModeCommand", { fg = colors.bg, bg = colors.yellow, bold = true })
hi("MiniStatuslineModeInsert", { fg = colors.bg, bg = colors.green, bold = true })
hi("MiniStatuslineModeNormal", { fg = colors.bg, bg = colors.cyan, bold = true })
hi("MiniStatuslineModeOther", { fg = colors.bg, bg = colors.grey, bold = true })
hi("MiniStatuslineModeReplace", { fg = colors.bg, bg = colors.red, bold = true })
hi("MiniStatuslineModeVisual", { fg = colors.bg, bg = colors.magenta, bold = true })
hi("MiniTablineCurrent", { fg = colors.fg, bg = colors.bg })
hi("MiniTablineFill", { bg = colors.sidebar })
hi("MiniTablineHidden", { fg = colors.grey, bg = colors.sidebar })
hi("MiniTablineModifiedCurrent", { fg = colors.yellow, bg = colors.bg })
hi("MiniTablineModifiedHidden", { fg = colors.yellow, bg = colors.sidebar })
hi("MiniTablineModifiedVisible", { fg = colors.yellow, bg = colors.selection })
hi("MiniTablineTabpagesection", { fg = colors.fg, bg = colors.selection })
hi("MiniTablineVisible", { fg = colors.fg, bg = colors.selection })

-- Noice
hi("NoiceCmdline", { fg = colors.fg })
hi("NoiceCmdlineIcon", { fg = colors.cyan })
hi("NoiceCmdlineIconSearch", { fg = colors.yellow })
hi("NoiceCmdlinePopup", { fg = colors.fg, bg = colors.sidebar })
hi("NoiceCmdlinePopupBorder", { fg = colors.grey })
hi("NoiceConfirm", { fg = colors.fg, bg = colors.sidebar })
hi("NoiceConfirmBorder", { fg = colors.grey })

-- Leap
hi("LeapMatch", { fg = colors.find_match, bold = true })
hi("LeapLabelPrimary", { fg = colors.black, bg = colors.find_match, bold = true })
hi("LeapLabelSecondary", { fg = colors.black, bg = colors.cyan, bold = true })

-- Flash
hi("FlashMatch", { fg = colors.find_match, bold = true })
hi("FlashCurrent", { fg = colors.black, bg = colors.find_match, bold = true })
hi("FlashLabel", { fg = colors.black, bg = colors.cyan, bold = true })

-- Bufferline
hi("BufferLineFill", { bg = colors.sidebar })
hi("BufferLineBackground", { fg = colors.grey, bg = colors.sidebar })
hi("BufferLineBuffer", { fg = colors.grey, bg = colors.sidebar })
hi("BufferLineBufferSelected", { fg = colors.fg, bg = colors.bg, bold = true })
hi("BufferLineBufferVisible", { fg = colors.grey, bg = colors.selection })
hi("BufferLineCloseButton", { fg = colors.grey, bg = colors.sidebar })
hi("BufferLineCloseButtonSelected", { fg = colors.red, bg = colors.bg })
hi("BufferLineCloseButtonVisible", { fg = colors.grey, bg = colors.selection })
hi("BufferLineSeparator", { fg = colors.sidebar, bg = colors.sidebar })
hi("BufferLineSeparatorSelected", { fg = colors.sidebar, bg = colors.bg })
hi("BufferLineSeparatorVisible", { fg = colors.sidebar, bg = colors.selection })
hi("BufferLineTab", { fg = colors.grey, bg = colors.sidebar })
hi("BufferLineTabSelected", { fg = colors.fg, bg = colors.bg })
hi("BufferLineTabClose", { fg = colors.red, bg = colors.sidebar })
hi("BufferLineIndicatorSelected", { fg = colors.cyan, bg = colors.bg })
hi("BufferLineIndicatorVisible", { fg = colors.selection, bg = colors.selection })
hi("BufferLineModified", { fg = colors.yellow, bg = colors.sidebar })
hi("BufferLineModifiedSelected", { fg = colors.yellow, bg = colors.bg })
hi("BufferLineModifiedVisible", { fg = colors.yellow, bg = colors.selection })

-- Lualine (if using lualine, export colors for config)
vim.g.undefined_colors = colors
