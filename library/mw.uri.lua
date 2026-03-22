---@meta

-- URI LIBRARY

mw.uri = {}

---@class mw.uri.object
---@field protocol string|nil String protocol/scheme.
---@field user string|nil String user.
---@field password string|nil String password.
---@field host string|nil String host name.
---@field port integer|nil Integer port.
---@field path string|nil String path.
---@field query table|nil A table, as from mw.uri.parseQueryString.
---@field fragment string|nil String fragment.
---@field userInfo string|nil String user and password.
---@field hostPort string|nil String host and port.
---@field authority string|nil String user, password, host, and port.
---@field queryString string|nil String version of the query table.
---@field relativePath string|nil String path, query string, and fragment.
local uriObj = {}

--- Parses a string into the current URI object.
---@param s string
---@return mw.uri.object
function uriObj:parse(s) end

--- Makes a copy of the URI object.
---@return mw.uri.object
function uriObj:clone() end

--- Merges the parameters table into the object's query table.
---@param parameters table
---@return mw.uri.object
function uriObj:extend(parameters) end

-- GLOBAL FUNCTIONS

--- Percent-encodes the string.
---@param s string
---@param enctype? string '"QUERY"', '"PATH"', or '"WIKI"'. Defaults to '"QUERY"'.
---@return string
function mw.uri.encode(s, enctype) end

--- Percent-decodes the string.
---@param s string
---@param enctype? string '"QUERY"', '"PATH"', or '"WIKI"'. Defaults to '"QUERY"'.
---@return string
function mw.uri.decode(s, enctype) end

--- Encodes a string for use in a MediaWiki URI fragment.
---@param s string
---@return string
function mw.uri.anchorEncode(s) end

--- Encodes a table as a URI query string.
---@param t table
---@return string
function mw.uri.buildQueryString(t) end

--- Decodes the query string to a table.
---@param s string
---@param i? integer Starting position (defaults to 1).
---@param j? integer Ending position (defaults to string length).
---@return table
function mw.uri.parseQueryString(s, i, j) end

--- Returns a URI object for the canonical URL for a page.
---@param page string
---@param query? table|string
---@return mw.uri.object|nil
function mw.uri.canonicalUrl(page, query) end

--- Returns a URI object for the full URL for a page.
---@param page string
---@param query? table|string
---@return mw.uri.object
function mw.uri.fullUrl(page, query) end

--- Returns a URI object for the local URL for a page.
---@param page string
---@param query? table|string
---@return mw.uri.object
function mw.uri.localUrl(page, query) end

--- Constructs a new URI object for the passed string or table.
---@param s string|table
---@return mw.uri.object
function mw.uri.new(s) end

--- Validates the passed table (or URI object).
---@param t table|mw.uri.object
---@return boolean, string|nil @Returns true if valid, or false and an error string.
function mw.uri.validate(t) end
