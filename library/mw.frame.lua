---@meta

-- FRAME OBJECT

-- Create a helper class for the objects returned by getArgument, newParserValue, etc.
---@class mw.parserValue
local parserValue = {}

--- Returns the expanded wikitext for the argument or value.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:getArgument)
---@return string
function parserValue:expand() end

---@class mw.frame
---@field args table<string|integer, string> A table for accessing the arguments passed to the frame. Values are always strings.
local frame = {}

--- Call a parser function, returning an appropriate string.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:callParserFunction)
---@param name string
---@param args? table|string|number
---@param ... any
---@return string
function frame:callParserFunction(name, args, ...) end

--- This is transclusion. Does roughly the same thing from Lua that {{template|arg1|arg2}} does in wikitext.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:expandTemplate)
---@param kwargs {title: string, args?: table}
---@return string
function frame:expandTemplate(kwargs) end

--- Equivalent to a call to frame:callParserFunction() with function name '#tag'.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:extensionTag)
---@overload fun(self: mw.frame, kwargs: {name: string, content: string, args: table|string}): string
---@param name string
---@param content string
---@param args? table
---@return string
function frame:extensionTag(name, content, args) end

--- Returns the frame for the page that called the {{#invoke:}}. Called on that parent frame, returns nil.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:getParent)
---@return mw.frame|nil
function frame:getParent() end

--- Returns the title associated with the frame as a string.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:getTitle)
---@return string
function frame:getTitle() end

--- Create a new Frame object that is a child of the current frame, with optional arguments and title.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:newChild)
---@param kwargs {title?: string, args?: table}
---@return mw.frame
function frame:newChild(kwargs) end

--- Expands wikitext in the context of the frame (templates, parser functions, parameters).
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:preprocess)
---@overload fun(self: mw.frame, kwargs: {text: string}): string
---@param text string
---@return string
function frame:preprocess(text) end

--- Gets an object for the specified argument, or nil if the argument is not provided.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:getArgument)
---@overload fun(self: mw.frame, kwargs: {name: string|integer}): mw.parserValue|nil
---@param arg string|integer
---@return mw.parserValue|nil
function frame:getArgument(arg) end

--- Returns an object with an expand() method that runs frame:preprocess(text).
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:newParserValue)
---@overload fun(self: mw.frame, kwargs: {text: string}): mw.parserValue
---@param text string
---@return mw.parserValue
function frame:newParserValue(text) end

--- Returns an object with an expand() method that runs frame:expandTemplate() on the arguments.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:newTemplateParserValue)
---@param kwargs {title: string, args?: table}
---@return mw.parserValue
function frame:newTemplateParserValue(kwargs) end

--- Same as pairs(frame.args). Included for backwards compatibility.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#frame:argumentPairs)
---@return fun(t: table): string|integer, string
function frame:argumentPairs() end
