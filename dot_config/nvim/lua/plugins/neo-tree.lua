return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Set to true to show hidden files (including dotfiles)
        hide_dotfiles = false, -- Ensure this is false if you want dotfiles visible
        -- hide_gitignored = true, -- You can set this to false if you want gitignored files visible too
      },
    },
  },
}
