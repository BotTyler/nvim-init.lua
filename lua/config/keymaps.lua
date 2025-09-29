-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--[[ this was used to open a new window.
vim.keymap.set("n", "<leader>npv", function()
    -- Get CWD
    local cwd = vim.fn.getcwd();
      -- Open a new Tmux Window
      vim.fn.system("tmux split-window -h 'nvim " .. cwd .. "'")
end, {noremap = true, silent = true})
--]]
-- vim.keymap.set("n", "<leader>re", function()
--     vim.cmd("Neotree source=custom_source toggle")
-- end, { desc = "Open remote path within snacks" })
-- vim.keymap.set("n", "<leader>bd", ui.bufremove, { desc = "Delete Buffer (without breaking neotree)" })
