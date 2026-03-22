---@meta

-- SVG LIBRARY

mw.svg = {}

---@class mw.svg.object
local svgObj = {}

--- Sets the inner content of the `<svg>` tag.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.svg.new)
---@param ... string
---@return mw.svg.object @Returns the SVG object for call chaining.
function svgObj:setContent(...) end

--- Sets an attribute of the `<svg>` tag.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.svg.new)
---@param name string
---@param value string
---@return mw.svg.object @Returns the SVG object for call chaining.
function svgObj:setAttribute(name, value) end

--- Sets an attribute of the resulting `<img>` tag.
--- Allowed attributes are: width, height, class, id, alt, title, style.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.svg.new)
---@param name string
---@param value string
---@return mw.svg.object @Returns the SVG object for call chaining.
function svgObj:setImgAttribute(name, value) end

--- Generates the final `<img>` tag. The return value is a strip marker.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.svg.new)
---@return string
function svgObj:toImage() end

--- Generates the SVG as a string.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.svg.new)
---@return string
function svgObj:toString() end

--- Initializes a new SVG image object.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.svg.new)
---@return mw.svg.object
function mw.svg.new() end
