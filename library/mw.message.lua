---@meta

-- MESSAGE LIBRARY

mw.message = {}

---@class mw.message
local msg = {}

--- Creates a new message object for the given message key.
---@param key string
---@param ... any Parameters passed to the new object's params() method.
---@return mw.message
function mw.message.new(key, ...) end

--- Creates a new message object for the given messages (the first one that exists will be used).
---@param ... string
---@return mw.message
function mw.message.newFallbackSequence(...) end

--- Creates a new message object using the given text directly rather than looking up an internationalized message.
---@param msg string
---@param ... any Parameters passed to the new object's params() method.
---@return mw.message
function mw.message.newRawMessage(msg, ...) end

--- Wraps the value so that it will not be parsed as wikitext.
---@param value any
---@return any
function mw.message.rawParam(value) end

--- Wraps the value so that it will automatically be formatted as by lang:formatNum().
---@param value number|string
---@return any
function mw.message.numParam(value) end

--- Returns a Language object for the default language.
---@return mw.language|string
function mw.message.getDefaultLanguage() end

--- Add parameters to the message.
---@overload fun(self: mw.message, params: table): mw.message
---@param ... string|number
---@return mw.message @Returns the msg object for call chaining.
function msg:params(...) end

--- Like :params(), but passes all parameters through mw.message.rawParam() first.
---@overload fun(self: mw.message, params: table): mw.message
---@param ... string|number
---@return mw.message @Returns the msg object for call chaining.
function msg:rawParams(...) end

--- Like :params(), but passes all parameters through mw.message.numParam() first.
---@overload fun(self: mw.message, params: table): mw.message
---@param ... string|number
---@return mw.message @Returns the msg object for call chaining.
function msg:numParams(...) end

--- Specifies the language to use when processing the message.
---@param lang string|mw.language
---@return mw.message @Returns the msg object for call chaining.
function msg:inLanguage(lang) end

--- Specifies whether to look up messages in the MediaWiki: namespace.
---@param bool boolean
---@return mw.message @Returns the msg object for call chaining.
function msg:useDatabase(bool) end

--- Substitutes the parameters and returns the message wikitext as-is.
---@return string
function msg:plain() end

--- Returns a boolean indicating whether the message key exists.
---@return boolean
function msg:exists() end

--- Returns a boolean indicating whether the message key has content.
---@return boolean
function msg:isBlank() end

--- Returns a boolean indicating whether the message key is disabled.
---@return boolean
function msg:isDisabled() end
