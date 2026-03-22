---@meta

-- LANGUAGE LIBRARY

---@class mw.language.static
mw.language = {}

mw.language.FALLBACK_MESSAGES = 1
mw.language.FALLBACK_STRICT = 2

---@class mw.language
local lang = {}

--- The full name of the language for the given language code.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.fetchLanguageName)
---@param code string
---@param inLanguage? string
---@return string
function mw.language.fetchLanguageName(code, inLanguage) end

--- Fetch the list of languages known to MediaWiki.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.fetchLanguageNames)
---@param inLanguage? string
---@param include? string 'all', 'mwfile', or 'mw'
---@return table<string, string>
function mw.language.fetchLanguageNames(inLanguage, include) end

--- Returns a new language object for the wiki's default content language.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.getContentLanguage)
---@return mw.language
function mw.language.getContentLanguage() end

--- Returns a list of MediaWiki's fallback language codes for the specified code.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.getFallbacksFor)
---@param code string
---@param mode? integer mw.language.FALLBACK_MESSAGES or mw.language.FALLBACK_STRICT
---@return table<integer, string>
function mw.language.getFallbacksFor(code, mode) end

--- Returns true if a language code is known to MediaWiki.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.isKnownLanguageTag)
---@param code string
---@return boolean
function mw.language.isKnownLanguageTag(code) end

--- Checks whether any localisation is available for that language code in MediaWiki.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.isSupportedLanguage)
---@param code string
---@return boolean
function mw.language.isSupportedLanguage(code) end

--- Returns true if a language code is of a valid form for internal customisation.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.isValidBuiltInCode)
---@param code string
---@return boolean
function mw.language.isValidBuiltInCode(code) end

--- Returns true if a language code string is of a valid form, whether or not it exists.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.isValidCode)
---@param code string
---@return boolean
function mw.language.isValidCode(code) end

--- Creates a new language object.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.new)
---@param code string
---@return mw.language
function mw.language.new(code) end

-- LANGUAGE OBJECT METHODS

--- Returns the language code for this language object.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:getCode)
---@return string
function lang:getCode() end

--- Returns the standard BCP-47 language code for this language object.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:toBcp47Code)
---@return string
function lang:toBcp47Code() end

--- Returns a list of MediaWiki's fallback language codes for this language object.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:getFallbackLanguages)
---@param mode? integer mw.language.FALLBACK_MESSAGES or mw.language.FALLBACK_STRICT
---@return table<integer, string>
function lang:getFallbackLanguages(mode) end

--- Returns true if the language is written right-to-left, false if left-to-right.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:isRTL)
---@return boolean
function lang:isRTL() end

--- Converts the string to lowercase, honoring any special rules for the language.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:lc)
---@param s string
---@return string
function lang:lc(s) end

--- Converts the first character of the string to lowercase.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:lcfirst)
---@param s string
---@return string
function lang:lcfirst(s) end

--- Converts the string to uppercase, honoring any special rules for the language.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:uc)
---@param s string
---@return string
function lang:uc(s) end

--- Converts the first character of the string to uppercase.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:ucfirst)
---@param s string
---@return string
function lang:ucfirst(s) end

--- Converts the string to a representation appropriate for case-insensitive comparison.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:caseFold)
---@param s string
---@return string
function lang:caseFold(s) end

--- Formats a number with grouping and decimal separators appropriate for the language.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:formatNum)
---@param n number|string
---@param options? {noCommafy?: boolean}
---@return string
function lang:formatNum(n, options) end

--- Formats a date according to the given format string.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:formatDate)
---@param format string
---@param timestamp? string
---@param localTime? boolean
---@return string
function lang:formatDate(format, timestamp, localTime) end

--- Breaks a duration in seconds into more human-readable units.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:formatDuration)
---@param seconds number
---@param chosenIntervals? table<integer, string> e.g., {'hours', 'minutes'}
---@return string
function lang:formatDuration(seconds, chosenIntervals) end

--- Takes a formatted number string and returns the actual number.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:parseFormattedNumber)
---@param s string
---@return number|nil
function lang:parseFormattedNumber(s) end

--- Chooses the appropriate grammatical form based on the number n.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:convertPlural)
---@overload fun(self: mw.language, n: number, forms: table<integer, string>): string
---@param n number
---@param ... string
---@return string
function lang:convertPlural(n, ...) end

--- Alias for lang:convertPlural
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:plural)
---@overload fun(self: mw.language, n: number, forms: table<integer, string>): string
---@param n number
---@param ... string
---@return string
function lang:plural(n, ...) end

--- Chooses the appropriate inflected form of a word for the given inflection code case.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:convertGrammar)
---@param word string
---@param case string
---@return string
function lang:convertGrammar(word, case) end

--- Alias for lang:convertGrammar, BUT NOTE THE PARAMETERS ARE REVERSED.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:grammar)
---@param case string
---@param word string
---@return string
function lang:grammar(case, word) end

--- Chooses the string corresponding to the gender of 'what'.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:gender)
---@overload fun(self: mw.language, what: string, forms: table): string
---@param what string "male", "female", or a username
---@param masculine string
---@param feminine string
---@param neutral string
---@return string
function lang:gender(what, masculine, feminine, neutral) end

--- Returns a Unicode arrow character corresponding to the direction.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:getArrow)
---@param direction string "forwards", "backwards", "left", "right", "up", "down"
---@return string|nil
function lang:getArrow(direction) end

--- Returns "ltr" or "rtl", depending on the directionality of the language.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:getDir)
---@return string
function lang:getDir() end

--- Returns a string containing either U+200E or U+200F.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:getDirMark)
---@param opposite? boolean
---@return string
function lang:getDirMark(opposite) end

--- Returns "&lrm;" or "&rlm;".
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:getDirMarkEntity)
---@param opposite? boolean
---@return string
function lang:getDirMarkEntity(opposite) end

--- Breaks a duration in seconds into a table mapping unit names to numbers.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language:getDurationIntervals)
---@param seconds number
---@param chosenIntervals? table<integer, string>
---@return table<string, number>
function lang:getDurationIntervals(seconds, chosenIntervals) end

-- GLOBAL ALIASES

--- Returns a new language object for the wiki's default content language. Alias of `mw.language.getContentLanguage()`.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.getContentLanguage)
---@return mw.language
function mw.getContentLanguage() end

--- Creates a new language object. Alias of `mw.language.new()`.
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.language.new)
---@param code string
---@return mw.language
function mw.getLanguage(code) end
