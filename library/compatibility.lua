---@meta

-- REMOVED GLOBALS
-- These are crossed out in the editor to prevent accidental use in MediaWiki

---@deprecated Scribunto removes print. Use mw.log() instead.
function print(...) end

---@deprecated Scribunto removes collectgarbage.
function collectgarbage(...) end

---@deprecated Scribunto removes module.
function module(...) end

---@deprecated Scribunto removes dofile.
function dofile(...) end

---@deprecated Scribunto removes loadfile.
function loadfile(...) end

---@deprecated Scribunto removes load.
function load(...) end

---@deprecated Scribunto removes loadstring.
function loadstring(...) end

---@deprecated Use a for loop with pairs() instead.
---@param t table
---@param f function
function table.foreach(t, f) end

---@deprecated Use a for loop with ipairs() instead.
---@param t table
---@param f function
function table.foreachi(t, f) end

---@deprecated Use the # operator instead.
---@param t table
---@return integer
function table.getn(t) end

-- PARTIAL LIBRARIES
-- These libraries were disabled in the LSP settings.
-- But some are rebuild only the functions Scribunto permits.

---@class os
os = {}

--- Returns an approximation of the amount in seconds of CPU time used by the program.
---@return number
function os.clock() end

--- Returns a string or a table containing date and time.
---@param format? string
---@param time? integer
---@return string|table
function os.date(format, time) end

--- Returns the number of seconds from time t1 to time t2.
---@param t2 integer
---@param t1 integer
---@return integer
function os.difftime(t2, t1) end

--- Returns the current time when called without arguments, or a time representing the date and time specified by the given table.
---@param table? table
---@return integer
function os.time(table) end

---@class debug
debug = {}

--- Returns a string with a traceback of the call stack.
---@param message? string
---@param level? integer
---@return string
function debug.traceback(message, level) end

---@class package
package = {}
package.loaded = {}
package.preload = {}
package.loaders = {}

--- Sets a metatable for module with its __index field referring to the global environment.
---@param module table
function package.seeall(module) end

--- Loads the given module. Looks in Scribunto's built-in libraries first, then in the `Module:` namespace.
---@param modname string The module name (e.g., 'Module:Example') or a built-in library name (e.g., 'libraryUtil').
---@return any
function require(modname) end

-- BASIC FUNCTIONS

--- A reference to the current global variable table.
---@type table
_G = {}

--- The running version of Lua, e.g. "Lua 5.1".
---@type string
_VERSION = "Lua 5.1"

-- STRING LIBRARY

--- Alias for mw.ustring.lower(). Converts string to lowercase using Unicode rules.
---@param s string
---@return string
function string.ulower(s) end

--- Alias for mw.ustring.upper(). Converts string to uppercase using Unicode rules.
---@param s string
---@return string
function string.uupper(s) end

-- MISC

--- May not be available depending on allowEnvFuncs in the engine configuration.
---@param f? integer|function
---@return table
function getfenv(f) end

--- May not be available depending on allowEnvFuncs in the engine configuration.
---@param f integer|function
---@param env table
---@return function
function setfenv(f, env) end
