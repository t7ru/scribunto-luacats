---@meta

-- =========================================================================
-- TEXT LIBRARY (mw.text)
-- =========================================================================

mw.text = {}

mw.text.JSON_PRESERVE_KEYS = 1
mw.text.JSON_TRY_FIXING = 2
mw.text.JSON_PRETTY = 4

--- Replaces HTML entities in the string with the corresponding characters.
---@param s string
---@param decodeNamedEntities? boolean
---@return string
function mw.text.decode(s, decodeNamedEntities) end

--- Replaces characters in a string with HTML entities.
---@param s string
---@param charset? string
---@return string
function mw.text.encode(s, charset) end

--- Decodes a JSON string.
---@param s string
---@param flags? integer
---@return any
function mw.text.jsonDecode(s, flags) end

--- Encode a JSON string.
---@param value any
---@param flags? integer
---@return string
function mw.text.jsonEncode(value, flags) end

--- Removes all MediaWiki strip markers from a string.
---@param s string
---@return string
function mw.text.killMarkers(s) end

--- Joins a list, prose-style (e.g., "1, 2, 3 and 4").
---@param list table
---@param separator? string
---@param conjunction? string
---@return string
function mw.text.listToText(list, separator, conjunction) end

--- Replaces various characters in the string with HTML entities to prevent interpretation as wikitext.
---@param s string
---@return string
function mw.text.nowiki(s) end

--- Splits the string into substrings at boundaries matching the Ustring pattern.
---@param s string
---@param pattern string
---@param plain? boolean
---@return table<integer, string>
function mw.text.split(s, pattern, plain) end

--- Returns an iterator function that will iterate over the substrings that would be returned by split().
---@param s string
---@param pattern string
---@param plain? boolean
---@return fun():string|nil
function mw.text.gsplit(s, pattern, plain) end

--- Generates an HTML-style tag.
---@overload fun(kwargs: {name: string, attrs?: table, content?: string|number|boolean}): string
---@param name string
---@param attrs? table<string, string|number|boolean>
---@param content? string|number|boolean
---@return string
function mw.text.tag(name, attrs, content) end

--- Remove whitespace or other characters from the beginning and end of a string.
---@param s string
---@param charset? string
---@return string
function mw.text.trim(s, charset) end

--- Truncates text to the specified length in code points, adding ellipsis if truncation was performed.
---@param text string
---@param length integer
---@param ellipsis? string
---@param adjustLength? boolean
---@return string
function mw.text.truncate(text, length, ellipsis, adjustLength) end

--- Replaces MediaWiki <nowiki> strip markers with the corresponding text.
---@param s string
---@param getOrigTextWhenPreprocessing? boolean
---@return string
function mw.text.unstripNoWiki(s, getOrigTextWhenPreprocessing) end

--- Equivalent to mw.text.killMarkers(mw.text.unstripNoWiki(string)).
---@param s string
---@return string
function mw.text.unstrip(s) end
