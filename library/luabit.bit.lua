---@meta

-- LUABIT LOADABLE LIBRARY

---@class luabit.bit
local bit = {}

---@param m integer
---@param n integer
---@return integer
function bit.band(m, n) end

---@param m integer
---@param n integer
---@return integer
function bit.bor(m, n) end

---@param m integer
---@param n integer
---@return integer
function bit.bxor(m, n) end

---@param n integer
---@return integer
function bit.bnot(n) end

---@param n integer
---@param bits integer
---@return integer
function bit.brshift(n, bits) end

---@param n integer
---@param bits integer
---@return integer
function bit.blshift(n, bits) end

---@param n integer
---@param bits integer
---@return integer
function bit.blogic_rshift(n, bits) end

---@param n integer
---@return table<integer, integer>
function bit.tobits(n) end

---@param bit_tbl table<integer, integer>
---@return integer
function bit.tonumb(bit_tbl) end

return bit
