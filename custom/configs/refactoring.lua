local M = {}

M.keys = {
  { "<leader>ce", ":Refactor extract<CR>", mode = "n", desc = "Extract To Function" },
  { "<leader>cv", ":Refactor extract_var<CR>", mode = "n", desc = "Extract To Variable" },
  { "<leader>cb", ":Refactor extract_block<CR>", mode = "n", desc = "Extract To Block" },
  { "<leader>ct", ":Refactor extract_block_to_file<CR>", mode = "n", desc = "Extract Block To File" },
  { "<leader>cn", ":Refactor refactor_names<CR>", mode = "n", desc = "Refactor names" },
  { "<leader>cf", ":Refactor extract_to_file<CR>", mode = "n", desc = "Extract to file" },
  { "<leader>ci", ":Refactor inline_var<CR>", mode = "n", desc = "Inline Variable" },

  { "<leader>ce", ":Refactor extract<CR>", mode = "v", desc = "Extract To Function" },
  { "<leader>cv", ":Refactor extract_var<CR>", mode = "v", desc = "Extract To Variable" },
  { "<leader>cb", ":Refactor extract_block<CR>", mode = "v", desc = "Extract To Block" },
  { "<leader>ct", ":Refactor extract_block_to_file<CR>", mode = "v", desc = "Extract Block To File" },
  { "<leader>cn", ":Refactor refactor_names<CR>", mode = "v", desc = "Refactor names" },
  { "<leader>cf", ":Refactor extract_to_file<CR>", mode = "v", desc = "Extract to file" },
  { "<leader>ci", ":Refactor inline_var<CR>", mode = "v", desc = "Inline Variable" },
}

return M
