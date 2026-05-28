return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        -- remove the LazyVim logo/header entirely
        sections = {
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}