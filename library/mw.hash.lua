---@meta

-- HASH LIBRARY

mw.hash = {}

--- Hashes a string value with the specified algorithm.
--- Valid algorithms may be fetched using `mw.hash.listAlgorithms()`.
---@param algo string
---@param value string
---@return string
function mw.hash.hashValue(algo, value) end

--- Returns a list of supported hashing algorithms.
--- This method is a passthrough of PHP's `hash_algos()`.
---@return table<integer, string>
function mw.hash.listAlgorithms() end
