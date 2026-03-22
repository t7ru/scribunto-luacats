---@meta

-- LANGUAGE LIBRARY

---@class mw.language.static
mw.language = {}

mw.language.FALLBACK_MESSAGES = 1
mw.language.FALLBACK_STRICT = 2

---@class mw.language
local lang = {}

--- The full name of the language for the given language code.
---@param code string
---@param inLanguage? string
---@return string
function mw.language.fetchLanguageName(code, inLanguage) end

--- Fetch the list of languages known to MediaWiki.
---@param inLanguage? string
---@param include? string 'all', 'mwfile', or 'mw'
---@return table<string, string>
function mw.language.fetchLanguageNames(inLanguage, include) end

--- Returns a new language object for the wiki's default content language.
---@return mw.language
function mw.language.getContentLanguage() end

--- Returns a list of MediaWiki's fallback language codes for the specified code.
---@param code string
---@param mode? integer mw.language.FALLBACK_MESSAGES or mw.language.FALLBACK_STRICT
---@return table<integer, string>
function mw.language.getFallbacksFor(code, mode) end

--- Returns true if a language code is known to MediaWiki.
---@param code string
---@return boolean
function mw.language.isKnownLanguageTag(code) end

--- Checks whether any localisation is available for that language code in MediaWiki.
---@param code string
---@return boolean
function mw.language.isSupportedLanguage(code) end

--- Returns true if a language code is of a valid form for internal customisation.
---@param code string
---@return boolean
function mw.language.isValidBuiltInCode(code) end

--- Returns true if a language code string is of a valid form, whether or not it exists.
---@param code string
---@return boolean
function mw.language.isValidCode(code) end

--- Creates a new language object.
---@param code string
---@return mw.language
function mw.language.new(code) end

-- LANGUAGE OBJECT METHODS

--- Returns the language code for this language object.
---@return string
function lang:getCode() end

--- Returns the standard BCP-47 language code for this language object.
---@return string
function lang:toBcp47Code() end

--- Returns a list of MediaWiki's fallback language codes for this language object.
---@param mode? integer mw.language.FALLBACK_MESSAGES or mw.language.FALLBACK_STRICT
---@return table<integer, string>
function lang:getFallbackLanguages(mode) end

--- Returns true if the language is written right-to-left, false if left-to-right.
---@return boolean
function lang:isRTL() end

--- Converts the string to lowercase, honoring any special rules for the language.
---@param s string
---@return string
function lang:lc(s) end

--- Converts the first character of the string to lowercase.
---@param s string
---@return string
function lang:lcfirst(s) end

--- Converts the string to uppercase, honoring any special rules for the language.
---@param s string
---@return string
function lang:uc(s) end

--- Converts the first character of the string to uppercase.
---@param s string
---@return string
function lang:ucfirst(s) end

--- Converts the string to a representation appropriate for case-insensitive comparison.
---@param s string
---@return string
function lang:caseFold(s) end

--- Formats a number with grouping and decimal separators appropriate for the language.
---@param n number|string
---@param options? {noCommafy?: boolean}
---@return string
function lang:formatNum(n, options) end

--- Formats a date according to the given format string.
---@param format string
---@param timestamp? string
---@param localTime? boolean
---@return string
function lang:formatDate(format, timestamp, localTime) end

--- Breaks a duration in seconds into more human-readable units.
---@param seconds number
---@param chosenIntervals? table<integer, string> e.g., {'hours', 'minutes'}
---@return string
function lang:formatDuration(seconds, chosenIntervals) end

--- Takes a formatted number string and returns the actual number.
---@param s string
---@return number|nil
function lang:parseFormattedNumber(s) end

--- Chooses the appropriate grammatical form based on the number n.
---@overload fun(self: mw.language, n: number, forms: table<integer, string>): string
---@param n number
---@param ... string
---@return string
function lang:convertPlural(n, ...) end

--- Alias for lang:convertPlural
---@overload fun(self: mw.language, n: number, forms: table<integer, string>): string
---@param n number
---@param ... string
---@return string
function lang:plural(n, ...) end

--- Chooses the appropriate inflected form of a word for the given inflection code case.
---@param word string
---@param case string
---@return string
function lang:convertGrammar(word, case) end

--- Alias for lang:convertGrammar, BUT NOTE THE PARAMETERS ARE REVERSED.
---@param case string
---@param word string
---@return string
function lang:grammar(case, word) end

--- Chooses the string corresponding to the gender of 'what'.
---@overload fun(self: mw.language, what: string, forms: table): string
---@param what string "male", "female", or a username
---@param masculine string
---@param feminine string
---@param neutral string
---@return string
function lang:gender(what, masculine, feminine, neutral) end

--- Returns a Unicode arrow character corresponding to the direction.
---@param direction string "forwards", "backwards", "left", "right", "up", "down"
---@return string|nil
function lang:getArrow(direction) end

--- Returns "ltr" or "rtl", depending on the directionality of the language.
---@return string
function lang:getDir() end

--- Returns a string containing either U+200E or U+200F.
---@param opposite? boolean
---@return string
function lang:getDirMark(opposite) end

--- Returns "&lrm;" or "&rlm;".
---@param opposite? boolean
---@return string
function lang:getDirMarkEntity(opposite) end

--- Breaks a duration in seconds into a table mapping unit names to numbers.
---@param seconds number
---@param chosenIntervals? table<integer, string>
---@return table<string, number>
function lang:getDurationIntervals(seconds, chosenIntervals) end

-- GLOBAL ALIASES

--- Returns a new language object for the wiki's default content language. Alias of `mw.language.getContentLanguage()`.
---@return mw.language
function mw.getContentLanguage() end

--- Creates a new language object. Alias of `mw.language.new()`.
---@param code string
---@return mw.language
function mw.getLanguage(code) end
