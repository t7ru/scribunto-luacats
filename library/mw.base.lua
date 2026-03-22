---@meta

-- BASE FUNCTIONS

---@class mw
mw = {}

--- Adds a warning which is displayed above the preview when previewing an edit.
---@param text string Parsed as wikitext.
function mw.addWarning(text) end

--- Calls `tostring()` on all arguments, then concatenates them with tabs as separators.
---@param ... any
---@return string
function mw.allToString(...) end

--- Creates a deep copy of a value. All tables (and their metatables) are reconstructed from scratch. Functions are still shared, however.
---@generic T
---@param value T
---@return T
function mw.clone(value) end

--- Returns the current frame object, typically the frame object from the most recent `#invoke`.
---@return mw.frame
function mw.getCurrentFrame() end

--- Adds one to the "expensive parser function" count, and throws an exception if it exceeds the limit.
function mw.incrementExpensiveFunctionCount() end

--- Returns true if the current `#invoke` is being substed, false otherwise.
---@return boolean
function mw.isSubsting() end

--- Efficiently loads large data tables. The loaded module is evaluated only once per page, rather than once per `#invoke` call.
--- The returned table (and all subtables) may contain only booleans, numbers, strings, and other tables. Functions are not allowed.
---@param module string The module to load (e.g., 'Module:Convert/data')
---@return table
function mw.loadData(module) end

--- This is the same as `mw.loadData()`, except it loads data from JSON pages rather than Lua tables.
--- The JSON content must be an array or object.
---@param page string The JSON page to load.
---@return table
function mw.loadJsonData(page) end

--- Serializes object to a human-readable representation, then returns the resulting string.
---@param object any
---@return string
function mw.dumpObject(object) end

--- Passes the arguments to `mw.allToString()`, then appends the resulting string to the log buffer.
--- In the debug console, the function `print()` is an alias for this function.
---@param ... any
function mw.log(...) end

--- Calls `mw.dumpObject()` and appends the resulting string to the log buffer.
--- If prefix is given, the logged text will be "prefix = object-string".
---@param object any
---@param prefix? string
function mw.logObject(object, prefix) end

--- Clears the log buffer.
function mw.clearLogBuffer() end

--- Returns the current log buffer.
---@return string
function mw.getLogBuffer() end
