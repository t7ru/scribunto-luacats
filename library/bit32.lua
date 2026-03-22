---@meta

-- BIT32 LOADABLE LIBRARY

---@class bit32
local bit32 = {}

--- Returns the bitwise and of its arguments.
--- If given zero arguments, the result has all bits set.
---@param ... integer
---@return integer
function bit32.band(...) end

--- Returns the bitwise complement of x.
---@param x integer
---@return integer
function bit32.bnot(x) end

--- Returns the bitwise OR of its arguments.
--- If given zero arguments, the result has all bits clear.
---@param ... integer
---@return integer
function bit32.bor(...) end

--- Returns a boolean indicating whether the bitwise AND of its arguments is not zero.
---@param ... integer
---@return boolean
function bit32.btest(...) end

--- Returns the bitwise XOR of its arguments.
--- If given zero arguments, the result has all bits clear.
---@param ... integer
---@return integer
function bit32.bxor(...) end

--- Extracts `width` bits from `n`, starting with bit `field`.
---@param n integer
---@param field integer 0 to 31
---@param width? integer 1 to 32 (defaults to 1)
---@return integer
function bit32.extract(n, field, width) end

--- Replaces `width` bits in `n`, starting with bit `field`, with the low `width` bits from `v`.
---@param n integer
---@param v integer
---@param field integer 0 to 31
---@param width? integer 1 to 32 (defaults to 1)
---@return integer
function bit32.replace(n, v, field, width) end

--- Returns the number `n` shifted `disp` bits to the left (logical shift).
---@param n integer
---@param disp integer
---@return integer
function bit32.lshift(n, disp) end

--- Returns the number `n` shifted `disp` bits to the right (logical shift).
---@param n integer
---@param disp integer
---@return integer
function bit32.rshift(n, disp) end

--- Returns the number `n` shifted `disp` bits to the right (arithmetic shift).
---@param n integer
---@param disp integer
---@return integer
function bit32.arshift(n, disp) end

--- Returns the number `n` rotated `disp` bits to the left.
---@param n integer
---@param disp integer
---@return integer
function bit32.lrotate(n, disp) end

--- Returns the number `n` rotated `disp` bits to the right.
---@param n integer
---@param disp integer
---@return integer
function bit32.rrotate(n, disp) end

return bit32
