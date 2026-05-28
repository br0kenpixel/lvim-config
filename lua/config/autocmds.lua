-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.opt.updatetime = 3000

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    local ignored_filetypes = {
      snacks_dashboard = true,
      lazy = true,
      mason = true,
      help = true,
    }

    if ignored_filetypes[vim.bo.filetype] then
      return
    end

    if #vim.lsp.get_clients({ bufnr = 0 }) == 0 then
      return
    end

    vim.lsp.buf.hover()
  end,
})