---@meta

-- USTRING LIBRARY

mw.ustring = {}

--- The maximum allowed length of a pattern, in bytes (10,000).
---@type integer
mw.ustring.maxPatternLength = 10000

--- The maximum allowed length of a string, in bytes.
---@type integer
mw.ustring.maxStringLength = 20971520 -- 20MB is the standard MW limit

--- Returns individual bytes; identical to string.byte().
---@param s string
---@param i? integer
---@param j? integer
---@return integer ...
function mw.ustring.byte(s, i, j) end

--- Returns the byte offset of a character in the string.
---@param s string
---@param l? integer Defaults to 1.
---@param i? integer Defaults to 1.
---@return integer
function mw.ustring.byteoffset(s, l, i) end

--- Much like string.char(), except that the integers are Unicode codepoints.
---@param ... integer
---@return string
function mw.ustring.char(...) end

--- Much like string.byte(), except return values are codepoints and offsets are characters.
---@param s string
---@param i? integer
---@param j? integer
---@return integer ...
function mw.ustring.codepoint(s, i, j) end

--- Much like string.find(), but uses Ustring patterns and character offsets.
---@param s string
---@param pattern string
---@param init? integer
---@param plain? boolean
---@return integer|nil start_pos, integer|nil end_pos, string|nil ... captures
function mw.ustring.find(s, pattern, init, plain) end

--- Identical to string.format(). Widths and precisions are in bytes, not codepoints.
---@param format string
---@param ... any
---@return string
function mw.ustring.format(format, ...) end

--- Returns three values for iterating over the codepoints in the string.
---@param s string
---@param i? integer Defaults to 1.
---@param j? integer Defaults to -1.
---@return fun():integer
function mw.ustring.gcodepoint(s, i, j) end

--- Much like string.gmatch(), except using Ustring patterns.
---@param s string
---@param pattern string
---@return fun():string ...
function mw.ustring.gmatch(s, pattern) end

--- Much like string.gsub(), except using Ustring patterns.
---@param s string
---@param pattern string
---@param repl string|table|function
---@param n? integer
---@return string, integer
function mw.ustring.gsub(s, pattern, repl, n) end

--- Returns true if the string is valid UTF-8, false if not.
---@param s string
---@return boolean
function mw.ustring.isutf8(s) end

--- Returns the length of the string in codepoints, or nil if not valid UTF-8.
---@param s string
---@return integer|nil
function mw.ustring.len(s) end

--- Converts the string to lowercase, based on Unicode definitions.
---@param s string
---@return string
function mw.ustring.lower(s) end

--- Much like string.match(), but uses Ustring patterns and character offsets.
---@param s string
---@param pattern string
---@param init? integer
---@return string|nil ...
function mw.ustring.match(s, pattern, init) end

--- Identical to string.rep().
---@param s string
---@param n integer
---@return string
function mw.ustring.rep(s, n) end

--- Much like string.sub(), except that the offsets are characters rather than bytes.
---@param s string
---@param i integer
---@param j? integer
---@return string
function mw.ustring.sub(s, i, j) end

--- Converts the string to Normalization Form C. Returns nil if not valid UTF-8.
---@param s string
---@return string|nil
function mw.ustring.toNFC(s) end

--- Converts the string to Normalization Form D. Returns nil if not valid UTF-8.
---@param s string
---@return string|nil
function mw.ustring.toNFD(s) end

--- Converts the string to Normalization Form KC. Returns nil if not valid UTF-8.
---@param s string
---@return string|nil
function mw.ustring.toNFKC(s) end

--- Converts the string to Normalization Form KD. Returns nil if not valid UTF-8.
---@param s string
---@return string|nil
function mw.ustring.toNFKD(s) end

--- Converts the string to uppercase, based on Unicode definitions.
---@param s string
---@return string
function mw.ustring.upper(s) end
