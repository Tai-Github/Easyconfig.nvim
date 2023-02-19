-- Check is installed
local _, pairs = pcall(require, 'nvim-autopairs')
if not _ then return end

pairs.setup{}
