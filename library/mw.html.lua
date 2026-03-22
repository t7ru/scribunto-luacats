---@meta

-- HTML LIBRARY

mw.html = {}

---@class mw.html
local html = {}

--- Creates a new `mw.html` object containing a `tagName` html element.
--- You can pass an empty string or nil as `tagName` to create an empty object.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html.create)
---@param tagName? string
---@param args? {selfClosing?: boolean, parent?: any}
---@return mw.html
function mw.html.create(tagName, args) end

--- Appends a child `mw.html` (builder) node to the current instance.
--- If a nil parameter is passed, this is a no-op.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:node)
---@param builder mw.html|string|nil
---@return mw.html @Returns the current builder instance for chaining.
function html:node(builder) end

--- Appends an undetermined number of wikitext strings to the `mw.html` object.
--- **Note:** This stops at the first nil item.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:wikitext)
---@param ... string|number
---@return mw.html @Returns the current builder instance for chaining.
function html:wikitext(...) end

--- Appends a newline to the `mw.html` object.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:newline)
---@return mw.html @Returns the current builder instance for chaining.
function html:newline() end

--- Appends a new child node with the given `tagName` to the builder.
--- **Note:** This method returns the `mw.html` instance of the NEWLY inserted tag, not the parent.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:tag)
---@param tagName string
---@param args? {selfClosing?: boolean, parent?: any}
---@return mw.html @Returns the newly created child builder.
function html:tag(tagName, args) end

--- Set an HTML attribute on the node. A value of nil unsets the attribute.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:attr)
---@overload fun(self: mw.html, name: table<string, string|number|boolean>): mw.html
---@param name string
---@param value? string|number|boolean
---@return mw.html @Returns the current builder instance for chaining.
function html:attr(name, value) end

--- Get the value of a html attribute previously set using `html:attr()`.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:getAttr)
---@param name string
---@return string|nil
function html:getAttr(name) end

--- Adds a class name to the node's class attribute.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:addClass)
---@param class string|number|nil
---@return mw.html @Returns the current builder instance for chaining.
function html:addClass(class) end

--- Set a CSS property on the node. A value of nil unsets the property.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:css)
---@overload fun(self: mw.html, name: table<string, string|number>): mw.html
---@param name string
---@param value? string|number
---@return mw.html @Returns the current builder instance for chaining.
function html:css(name, value) end

--- Add some raw css to the node's style attribute.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:cssText)
---@param css string|number|nil
---@return mw.html @Returns the current builder instance for chaining.
function html:cssText(css) end

--- Returns the parent node under which the current node was created.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:done)
---@return mw.html @Returns the parent builder.
function html:done() end

--- Traverses all the way to the root node of the tree and returns it.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.html:allDone)
---@return mw.html @Returns the root builder.
function html:allDone() end
