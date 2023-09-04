local status, tokyo = pcall(require, "tokyonight")

if not status then
    return
end

tokyo.setup({
    style = "night",
    styles = {
      comments = { italic = true },
      keywords = { bold = true },
      functions = { bold = true },
      variables = {},
      operators = { bold = true },
      booleans = { bold = true },
      sidebars = "dark",
      floats = "dark",
    },
    on_highlights = function(hl, c)
      hl.CursorLine = { bg = c.bg_highlight }
      hl.Visual = { bg = "#484a37" }
      hl.Type                 = { fg = c.blue1, bold = true }
      hl.Conditional          = { fg = c.magenta, bold = true }
      hl.Repeat               = { fg = c.magenta, bold = true }
      hl.Label                = { fg = c.red }
      hl.Constant             = { fg = c.orange, bold = true }
      hl.String               = { fg = c.green }
      hl.Character            = { fg = c.green }
      hl.Number               = { fg = c.orange }
      hl.Boolean              = { fg = c.orange }
      hl.Float                = { fg = c.orange }
      hl["@constructor"]      = { fg = c.blue1 }
      hl["@variable.builtin"] = { fg = c.red }
      hl["@text.uri"] = {}
      hl.Include              = { fg = c.magenta, bold = true }
      hl.rainbowcol1          = { fg = '#F4CA0D' }
      hl.rainbowcol2          = { fg = c.purple }
      hl.rainbowcol3          = { fg = c.cyan }
      hl.rainbowcol4          = { fg = '#F4CA0D' }
      hl.rainbowcol5          = { fg = c.purple }
      hl.rainbowcol6          = { fg = c.cyan }
      hl.rainbowcol7          = { fg = '#F4CA0D' }
      -- hl.rainbowcol7 = { fg = c.purple }
      hl["@punctuation.bracket"] = { fg = c.magenta } -- For brackets and parens.
    end
  })

  vim.cmd[[colorscheme tokyonight-night]]
  vim.cmd[[
    highlight RainbowDelimiterRed  guifg=#f4ca0d ctermfg=White
    highlight RainbowDelimiterYellow guifg=#9d7cd8 ctermfg=White
    highlight RainbowDelimiterBlue guifg=#7dcfff ctermfg=White
    highlight RainbowDelimiterOrange guifg=#f4ca0d ctermfg=White
    highlight RainbowDelimiterGreen guifg=#9d7cd8 ctermfg=White
    highlight RainbowDelimiterViolet guifg=#7dcfff ctermfg=White
    highlight RainbowDelimiterCyan guifg=#f4ca0d ctermfg=White
  ]]
