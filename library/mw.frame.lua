---@meta

-- FRAME OBJECT

-- Create a helper class for the objects returned by getArgument, newParserValue, etc.
---@class mw.parserValue
local parserValue = {}

--- Returns the expanded wikitext for the argument or value.
---@return string
function parserValue:expand() end

---@class mw.frame
---@field args table<string|integer, string> A table for accessing the arguments passed to the frame. Values are always strings.
local frame = {}

--- Call a parser function, returning an appropriate string.
---@param name string
---@param args? table|string|number
---@param ... any
---@return string
function frame:callParserFunction(name, args, ...) end

--- This is transclusion. Does roughly the same thing from Lua that {{template|arg1|arg2}} does in wikitext.
---@param kwargs {title: string, args?: table}
---@return string
function frame:expandTemplate(kwargs) end

--- Equivalent to a call to frame:callParserFunction() with function name '#tag'.
---@overload fun(self: mw.frame, kwargs: {name: string, content: string, args: table|string}): string
---@param name string
---@param content string
---@param args? table
---@return string
function frame:extensionTag(name, content, args) end

--- Returns the frame for the page that called the {{#invoke:}}. Called on that parent frame, returns nil.
---@return mw.frame|nil
function frame:getParent() end

--- Returns the title associated with the frame as a string.
---@return string
function frame:getTitle() end

--- Create a new Frame object that is a child of the current frame, with optional arguments and title.
---@param kwargs {title?: string, args?: table}
---@return mw.frame
function frame:newChild(kwargs) end

--- Expands wikitext in the context of the frame (templates, parser functions, parameters).
---@overload fun(self: mw.frame, kwargs: {text: string}): string
---@param text string
---@return string
function frame:preprocess(text) end

--- Gets an object for the specified argument, or nil if the argument is not provided.
---@overload fun(self: mw.frame, kwargs: {name: string|integer}): mw.parserValue|nil
---@param arg string|integer
---@return mw.parserValue|nil
function frame:getArgument(arg) end

--- Returns an object with an expand() method that runs frame:preprocess(text).
---@overload fun(self: mw.frame, kwargs: {text: string}): mw.parserValue
---@param text string
---@return mw.parserValue
function frame:newParserValue(text) end

--- Returns an object with an expand() method that runs frame:expandTemplate() on the arguments.
---@param kwargs {title: string, args?: table}
---@return mw.parserValue
function frame:newTemplateParserValue(kwargs) end

--- Same as pairs(frame.args). Included for backwards compatibility.
---@return fun(t: table): string|integer, string
function frame:argumentPairs() end
