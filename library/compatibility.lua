---@meta

-- REMOVED GLOBALS

---@deprecated Scribunto removes print. Use mw.log() instead.
function print(...) end

---@deprecated Scribunto removes collectgarbage.
function collectgarbage(...) end

---@deprecated Scribunto removes module. Use local p = {} ... return p instead.
function module(...) end

---@deprecated Scribunto removes dofile.
function dofile(...) end

---@deprecated Scribunto removes loadfile.
function loadfile(...) end

---@deprecated Scribunto removes load.
function load(...) end

---@deprecated Scribunto removes loadstring.
function loadstring(...) end

---@deprecated Scribunto removes the global arg table. Use frame.args instead.
arg = nil

---@deprecated Use a for loop with pairs() instead.
function table.foreach(t, f) end

---@deprecated Use a for loop with ipairs() instead.
function table.foreachi(t, f) end

---@deprecated Use the # operator instead.
function table.getn(t) end

-- MODIFIED BASIC FUNCTIONS

--- Returns a reference to the current global variable table.
---@type table<string, any>
_G = {}

--- The running version of Lua (e.g. "Lua 5.1").
---@type string
_VERSION = "Lua 5.1"

--- Support for the __pairs metamethod
---@param t table
---@return function next, table t, any key
function pairs(t) end

--- Support for the __ipairs metamethod
---@param t table
---@return function iter, table t, integer i
function ipairs(t) end

--- Works on tables only to prevent unauthorized access to parent environments.
---@param object table
---@return table|nil
function getmetatable(object) end

--- Pointer addresses of tables and functions are not provided in Scribunto.
---@param v any
---@return string
function tostring(v) end

--- Certain internal errors (like timeout) cannot be intercepted by pcall in Scribunto.
---@param f function
---@param ... any
---@return boolean success, any result
function pcall(f, ...) end

--- Certain internal errors (like timeout) cannot be intercepted by xpcall in Scribunto.
---@param f function
---@param err function
---@param ... any
---@return boolean success, any result
function xpcall(f, err, ...) end

--- Loads a Scribunto library or a wiki module from the `Module:` namespace.
---@param modname string The module name (e.g., 'Module:Example') or a built-in library name (e.g., 'libraryUtil').
---@return any
function require(modname) end

--- May not be available depending on allowEnvFuncs configuration.
---@param f? integer|function
---@return table
function getfenv(f) end

--- May not be available depending on allowEnvFuncs configuration.
---@param f integer|function
---@param env table
---@return function
function setfenv(f, env) end

-- SCRIBUNTO LIBRARIES

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

--- Returns the current time or a time representing the provided table.
---@param table? table
---@return integer
function os.time(table) end

---@class debug
debug = {}

--- Returns a string with a traceback of the call stack.
---@overload fun(thread: thread, message?: string, level?: integer): string
---@param message? string
---@param level? integer
---@return string
function debug.traceback(message, level) end

---@class package
package = {}
---@type table<string, any>
package.loaded = {}
---@type table<string, any>
package.preload = {}

--- Sets a metatable for module with its __index field referring to the global environment.
---@param module table
function package.seeall(module) end

-- STRING LIBRARY ALIASES

--- Alias for mw.ustring.lower().
---@param s string
---@return string
function string.ulower(s) end

--- Alias for mw.ustring.upper().
---@param s string
---@return string
function string.uupper(s) end

--- Alias for mw.ustring.len().
---@param s string
---@return integer|nil
function string.ulen(s) end
