local M = {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },
  opts = {
    filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
    provider_selector = function(bufnr, filetype, buftype)
      return { "lsp", "indent" }
    end,
  },
  config = function(_, opts)
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("local_detach_ufo", { clear = true }),
      pattern = opts.filetype_exclude,
      callback = function()
        require("ufo").detach()
      end,
    })

    vim.opt.foldcolumn = "1" -- '0' is not bad
    vim.opt.foldlevel = 99 -- Using ufo provider need a large value, feel
    vim.opt.foldlevelstart = 99
    vim.opt.foldenable = true
    require("ufo").setup(opts)
  end,
}

return M
