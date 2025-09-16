--return {
--  "MagicDuck/grug-far.nvim",
-- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
-- additional lazy config to defer loading is not really needed...
--  config = function()
-- optional setup call to override plugin options
-- alternatively you can set options with vim.g.grug_far = { ... }
--    require("grug-far").setup({
-- options, see Configuration section below
-- there are no required options atm
--    })
--  end,
--}

return {
  "MagicDuck/grug-far.nvim",
  opts = { headerMaxWidth = 80 },
  cmd = "GrugFar",
  keys = {
    {
      "<leader>sr",
      function()
        local grug = require("grug-far")
        local ext = vim.bo.buftype == "" and vim.fn.expand("%:e")
        grug.open({
          transient = true,
          prefills = {
            filesFilter = ext and ext ~= "" and "*." .. ext or nil,
          },
        })
      end,
      mode = { "n", "v" },
      desc = "Search and Replace",
    },
    {
      "<leader>sf",
      function()
        local grug = require("grug-far")
        grug.open({ prefills = { paths = vim.fn.expand("%") } })
      end,
      mode = { "n", "v" },
      desc = "Search and Replace inside current file",
    },
  },
}
