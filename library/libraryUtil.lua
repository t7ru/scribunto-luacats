---@meta

-- LIBRARYUTIL LOADABLE LIBRARY

---@class libraryUtil
local libraryUtil = {}

--- Raises an error if type(arg) does not match expectType.
---@param name string The name of the calling function.
---@param argIdx integer The position of the argument in the list.
---@param arg any The argument to check.
---@param expectType string The expected type (e.g., 'string', 'table').
---@param nilOk? boolean If true, no error is raised if arg is nil.
function libraryUtil.checkType(name, argIdx, arg, expectType, nilOk) end

--- Raises an error if type(arg) does not match any strings in expectTypes.
---@param name string The name of the calling function.
---@param argIdx integer The position of the argument in the list.
---@param arg any The argument to check.
---@param expectTypes table<integer, string> An array of valid type strings.
function libraryUtil.checkTypeMulti(name, argIdx, arg, expectTypes) end

--- Raises an error if type(value) does not match expectType.
--- Intended for use in __newindex metamethods.
---@param index any The index being set.
---@param value any The value being checked.
---@param expectType string The expected type.
function libraryUtil.checkTypeForIndex(index, value, expectType) end

--- Equivalent to checkType for named argument syntax: func{ name = value }.
---@param name string The name of the calling function.
---@param argName string|integer The name/key of the argument.
---@param arg any The argument to check.
---@param expectType string The expected type.
---@param nilOk? boolean If true, no error is raised if arg is nil.
function libraryUtil.checkTypeForNamedArg(name, argName, arg, expectType, nilOk) end

--- Returns a function used to verify that "methods" are called with the correct 'self'.
---@param libraryName string The name of your library.
---@param varName string The name of the variable (e.g., 'obj').
---@param selfObj table The object to validate against.
---@param selfObjDesc string A description for error messages (e.g., 'myLibrary object').
---@return fun(self: table, methodName: string)
function libraryUtil.makeCheckSelfFunction(libraryName, varName, selfObj, selfObjDesc) end

return libraryUtil
