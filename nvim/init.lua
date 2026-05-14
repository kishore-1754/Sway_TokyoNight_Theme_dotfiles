-- =========================
-- Base Settings
-- =========================
vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.signcolumn = "yes"

-- =========================
-- Your Foot Color Palette
-- =========================
local colors = {
  fg = "#a9b1d6",

  black = "#414868",
  red = "#f7768e",
  green = "#9ece6a",
  yellow = "#e0af68",
  blue = "#7aa2f7",
  purple = "#bb9af7",
  cyan = "#7dcfff",
}

-- =========================
-- UI Colors (TRANSPARENT)
-- =========================
-- IMPORTANT: no background = transparency works
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg })

vim.api.nvim_set_hl(0, "LineNr", { fg = colors.black })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.blue, bold = true })

-- Keep cursor line subtle (no hard bg clash)
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1f2335" })

vim.api.nvim_set_hl(0, "Visual", { bg = "#2a2e3f" })

-- =========================
-- Syntax highlighting
-- =========================
vim.api.nvim_set_hl(0, "Comment", { fg = colors.black, italic = true })

vim.api.nvim_set_hl(0, "String", { fg = colors.green })
vim.api.nvim_set_hl(0, "Function", { fg = colors.blue })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Identifier", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Type", { fg = colors.yellow })

-- =========================
-- MatchParen (clean + readable)
-- =========================

vim.api.nvim_set_hl(0, "MatchParen", {
  fg = "#1a1b26",   -- dark text
  bg = "#7dcfff",   -- cyanbox
  bold = true,
  underline = false,
})

-- =========================
-- Popup menu (fixed contrast)
-- =========================
vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = "#24283b" })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#1a1b26", bg = colors.blue })
