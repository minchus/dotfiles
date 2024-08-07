-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function run_curr_python_file()
  -- Save the current file.
  vim.cmd("write")

  local lnrvim_togterm_cmd = vim.api.nvim_replace_termcodes("<C-/>", true, false, true)
  vim.api.nvim_feedkeys(lnrvim_togterm_cmd, "m", true)

  local file_name = vim.api.nvim_buf_get_name(0)
  local py_cmd = vim.api.nvim_replace_termcodes('python "' .. file_name .. '"<cr>', true, false, true)
  vim.api.nvim_feedkeys(py_cmd, "t", false)
end

vim.keymap.set({ "n" }, "<leader>r", "", {
  desc = "Save and run current python file",
  callback = run_curr_python_file,
})
