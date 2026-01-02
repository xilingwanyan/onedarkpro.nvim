local M = {}

---Set the highlight groups syntax related highlight group
---@param theme table
---@return table
function M.groups(theme)
  local config = require("onedarkpro.config")

  return {
    Comment = { fg = theme.palette.Xcomment, style = config.styles.comments }, -- Comments
    Constant = { fg = theme.palette.Xvariable, style = config.styles.constants }, -- (preferred) any constant
    String = { fg = theme.palette.Xstring, style = config.styles.strings }, --   a string constant: "this is a string"
    Character = { fg = theme.palette.Xstring }, -- a character constant: 'c', '\n'
    Number = { fg = theme.palette.Xinteger, style = config.styles.numbers }, -- a number constant: 234, 0xff
    Float = { fg = theme.palette.Xfloat }, -- a floating point constant: 2.3e10
    Boolean = { fg = theme.palette.Xboolean }, -- a boolean constant: TRUE, false

    Identifier = { fg = theme.palette. Xvariable, style = config.styles.variables }, -- (preferred) any variable name
    Function = { fg = theme.palette.Xfunction, style = config.styles.functions }, -- function name (also: methods for classes)

    Statement = { fg = theme.palette.Xkeyword }, -- (preferred) any statement
    Conditional = { fg = theme.palette.Xkeyword, style = config.styles.conditionals }, --  if, then, else, endif, switch, etc
    Repeat = { fg = theme.palette.Xkeyword }, -- for, do, while, etc
    Label = { fg = theme.palette.Xkeyword }, -- case, default, etc

    Operator = { fg = theme.palette.Xoperator, style = config.styles.operators }, -- "sizeof", "+", "*", etc
    Keyword = { fg = theme.palette.Xkeyword, style = config.styles.keywords }, -- any other keyword
    Exception = { link = "Keyword" }, -- try, catch, throw

    PreProc = { fg = theme.palette.Xannotation }, -- (preferred) generic Preprocessor
    Include = { fg = theme.palette.Xkeyword }, -- preprocessor #include
    Define = { fg = theme.palette.Xkeyword }, -- preprocessor #define
    Macro = { fg = theme.palette.Xfunction }, -- same as Define
    PreCondit = { fg = theme.palette.Xannotation }, -- preprocessor #if, #else, #endif, etc

    Type = { fg = theme.palette.Xfunction, style = config.styles.types }, -- (preferred) int, long, char, etc
    StorageClass = { fg = theme.palette.Xkeyword }, -- static, register, volatile, etc
    Structure = { fg = theme.palette.Xparameter }, -- struct, union, enum, etc
    Typedef = { fg = theme.palette.Xfunction }, -- A typedef

    Special = { fg = theme.palette.Xborder }, -- (preferred) any special symbol
    SpecialChar = { fg = theme.palette.Xborder }, -- special character in a constant
    -- Tag = {}, -- you can use CTRL-] on this
    Delimiter = { fg = theme.palette.Xbracket }, -- character that needs attention
    SpecialComment = { fg = theme.palette.comment }, -- special things inside a comment
    -- Debug = {}, -- debugging statements

    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold = { bold = true },
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|
    Italic = { italic = true },

    Error = { fg = theme.palette.Xkeyword }, -- (preferred) any erroneous construct
    Todo = { fg = theme.palette.Xborder }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    qfLineNr = { link = "LineNr" },
    qfFileName = { link = "Directory" },
  }
end

return M
