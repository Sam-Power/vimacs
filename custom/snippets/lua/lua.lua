local luasnip = require "luasnip"
local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"
local ai = require "luasnip.nodes.absolute_indexer"
local extras = require "luasnip.extras"
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require "luasnip.extras.expand_conditions"
local postfix = require("luasnip.extras.postfix").postfix
local types = require "luasnip.util.types"
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

-- local calculate_comment_string = require("Comment.ft").calculate
-- local utils = require "Comment.utils"
--
-- --- Get the comment string {beg,end} table
-- ---@param ctype integer 1 for `line`-comment and 2 for `block`-comment
-- ---@return table comment_strings {begcstring, endcstring}
-- local get_cstring = function(ctype)
--   -- use the `Comments.nvim` API to fetch the comment string for the region (eq. '--%s' or '--[[%s]]' for `lua`)
--   local cstring = calculate_comment_string { ctype = ctype, range = utils.get_region() } or vim.bo.commentstring
--   -- as we want only the strings themselves and not strings ready for using `format` we want to split the left and right side
--   local left, right = utils.unwrap_cstr(cstring)
--   -- create a `{left, right}` table for it
--   return { left, right }
-- end
--
-- local function create_box(opts)
--   local pl = opts.padding_length or 4
--   local function pick_comment_start_and_end()
--     -- because lua block comment is unlike other language's,
--     --  so handle lua ctype
--     local ctype = 2
--     if vim.opt.ft:get() == "lua" then
--       ctype = 1
--     end
--     local cs = get_cstring(ctype)[1]
--     local ce = get_cstring(ctype)[2]
--     if ce == "" or ce == nil then
--       ce = cs
--     end
--     return cs, ce
--   end
--   return {
--     -- top line
--     f(function(args)
--       local cs, ce = pick_comment_start_and_end()
--       return cs .. string.rep(string.sub(cs, #cs, #cs), string.len(args[1][1]) + 2 * pl) .. ce
--     end, { 1 }),
--     t { "", "" },
--     f(function()
--       local cs = pick_comment_start_and_end()
--       return cs .. string.rep(" ", pl)
--     end),
--     i(1, "box"),
--     f(function()
--       local cs, ce = pick_comment_start_and_end()
--       return string.rep(" ", pl) .. ce
--     end),
--     t { "", "" },
--     -- bottom line
--     f(function(args)
--       local cs, ce = pick_comment_start_and_end()
--       return cs .. string.rep(string.sub(ce, 1, 1), string.len(args[1][1]) + 2 * pl) .. ce
--     end, { 1 }),
--   }
-- end
--
-- return {
--   s({ trig = "box" }, create_box { padding_length = 8 }),
--   s({ trig = "bbox" }, create_box { padding_length = 20 }),
-- }
