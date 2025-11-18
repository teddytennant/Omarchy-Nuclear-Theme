-- Nuclear Theme for Neovim
-- Self-contained theme configuration for Omarchy

local colors = {
    bg = "#000000",
    fg = "#FFFFFF",
    selected_bg = "#333333",
    selected_fg = "#FFFFFF",
    inactive_fg = "#777777",
    highlight = "#FFFFFF",
    gradient_start = "#444444",
    gradient_mid = "#666666",
    gradient_end = "#888888",
    black = "#000000",
    red = "#222222",
    green = "#333333",
    yellow = "#444444",
    blue = "#555555",
    magenta = "#666666",
    cyan = "#777777",
    white = "#DDDDDD",
    bright_black = "#4D4D4D",
    bright_red = "#666666",
    bright_green = "#777777",
    bright_yellow = "#888888",
    bright_blue = "#999999",
    bright_magenta = "#AAAAAA",
    bright_cyan = "#BBBBBB",
    bright_white = "#FFFFFF",
}

local function setup_nuclear_theme()
    -- Clear existing highlights
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.g.colors_name = "nuclear"
    vim.cmd("set termguicolors")

    -- Set highlights
    local hl = vim.api.nvim_set_hl
    hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
    hl(0, "NormalFloat", { fg = colors.fg, bg = colors.black })
    hl(0, "FloatBorder", { fg = colors.blue, bg = colors.black })
    hl(0, "Comment", { fg = colors.inactive_fg, italic = true })
    hl(0, "Constant", { fg = colors.green })
    hl(0, "String", { fg = colors.yellow })
    hl(0, "Character", { fg = colors.green })
    hl(0, "Number", { fg = colors.red })
    hl(0, "Boolean", { fg = colors.red })
    hl(0, "Float", { fg = colors.red })
    hl(0, "Identifier", { fg = colors.cyan })
    hl(0, "Function", { fg = colors.magenta })
    hl(0, "Statement", { fg = colors.magenta })
    hl(0, "Conditional", { fg = colors.magenta })
    hl(0, "Repeat", { fg = colors.magenta })
    hl(0, "Label", { fg = colors.magenta })
    hl(0, "Operator", { fg = colors.fg })
    hl(0, "Keyword", { fg = colors.magenta })
    hl(0, "Exception", { fg = colors.magenta })
    hl(0, "PreProc", { fg = colors.yellow })
    hl(0, "Include", { fg = colors.magenta })
    hl(0, "Define", { fg = colors.magenta })
    hl(0, "Macro", { fg = colors.magenta })
    hl(0, "PreCondit", { fg = colors.yellow })
    hl(0, "Type", { fg = colors.green })
    hl(0, "StorageClass", { fg = colors.green })
    hl(0, "Structure", { fg = colors.green })
    hl(0, "Typedef", { fg = colors.green })
    hl(0, "Special", { fg = colors.yellow })
    hl(0, "SpecialChar", { fg = colors.highlight })
    hl(0, "Tag", { fg = colors.highlight })
    hl(0, "Delimiter", { fg = colors.fg })
    hl(0, "SpecialComment", { fg = colors.inactive_fg })
    hl(0, "Debug", { fg = colors.red })
    hl(0, "Underlined", { fg = colors.blue, underline = true })
    hl(0, "Ignore", { fg = colors.inactive_fg })
    hl(0, "Error", { fg = colors.bg, bg = colors.red })
    hl(0, "Todo", { fg = colors.bg, bg = colors.yellow })
    hl(0, "LineNr", { fg = colors.inactive_fg })
    hl(0, "CursorLineNr", { fg = colors.highlight })
    hl(0, "CursorLine", { bg = colors.selected_bg })
    hl(0, "StatusLine", { fg = colors.selected_fg, bg = colors.selected_bg })
    hl(0, "StatusLineNC", { fg = colors.inactive_fg, bg = colors.black })
    hl(0, "VertSplit", { fg = colors.blue })
    hl(0, "TabLine", { fg = colors.inactive_fg, bg = colors.bg })
    hl(0, "TabLineFill", { bg = colors.bg })
    hl(0, "TabLineSel", { fg = colors.fg, bg = colors.selected_bg })
    hl(0, "Visual", { bg = colors.selected_bg })
    hl(0, "Search", { fg = colors.bg, bg = colors.highlight })
    hl(0, "IncSearch", { fg = colors.bg, bg = colors.highlight })
    hl(0, "Substitute", { fg = colors.bg, bg = colors.yellow })
    hl(0, "Directory", { fg = colors.green })
    hl(0, "Title", { fg = colors.fg, bold = true })
    hl(0, "ErrorMsg", { fg = colors.red })
    hl(0, "WarningMsg", { fg = colors.yellow })
    hl(0, "ModeMsg", { fg = colors.green })
    hl(0, "MoreMsg", { fg = colors.green })
    hl(0, "Question", { fg = colors.magenta })
    hl(0, "NonText", { fg = colors.inactive_fg })
    hl(0, "SignColumn", { bg = colors.bg })
    hl(0, "Folded", { fg = colors.inactive_fg, bg = colors.black })
    hl(0, "FoldColumn", { fg = colors.inactive_fg })
    hl(0, "Pmenu", { fg = colors.fg, bg = colors.black })
    hl(0, "PmenuSel", { fg = colors.selected_fg, bg = colors.selected_bg })
    hl(0, "PmenuSbar", { bg = colors.black })
    hl(0, "PmenuThumb", { bg = colors.blue })
    hl(0, "WildMenu", { fg = colors.bg, bg = colors.highlight })
    hl(0, "DiffAdd", { fg = colors.green, bg = colors.bg })
    hl(0, "DiffChange", { fg = colors.yellow, bg = colors.bg })
    hl(0, "DiffDelete", { fg = colors.red, bg = colors.bg })
    hl(0, "DiffText", { fg = colors.fg, bg = colors.selected_bg })
    hl(0, "@variable", { fg = colors.cyan })
    hl(0, "@function", { fg = colors.magenta })
    hl(0, "@keyword", { fg = colors.magenta })
    hl(0, "@string", { fg = colors.yellow })
    hl(0, "@number", { fg = colors.red })
    hl(0, "@boolean", { fg = colors.red })
    hl(0, "@comment", { fg = colors.inactive_fg, italic = true })
    hl(0, "@type", { fg = colors.green })
    hl(0, "@constant", { fg = colors.green })
    hl(0, "@operator", { fg = colors.fg })
    hl(0, "@punctuation", { fg = colors.fg })
    hl(0, "DiagnosticError", { fg = colors.red })
    hl(0, "DiagnosticWarn", { fg = colors.yellow })
    hl(0, "DiagnosticInfo", { fg = colors.green })
    hl(0, "DiagnosticHint", { fg = colors.blue })
end

-- Setup on load
vim.api.nvim_create_autocmd("VimEnter", {
    callback = setup_nuclear_theme,
    once = true,
})

-- Also setup immediately if Neovim is already loaded
if vim.v.vim_did_enter == 1 then
    setup_nuclear_theme()
end

return {}
