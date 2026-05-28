return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          { section = "keys", gap = 1, padding = 1 },
          --Disable the stats text
          --{ section = "startup" },
        },

        preset = {
          keys = {
            {
              icon = " ",
              key = "n",
              desc = "New File",
              action = ":ene | startinsert",
            },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            {
              icon = " ",
              key = "x",
              desc = "Lazy Extras",
              action = ":LazyExtras",
            },
            {
              icon = "󰒲 ",
              key = "l",
              desc = "Lazy",
              action = ":Lazy",
            },
            {
              icon = " ",
              key = "q",
              desc = "Quit",
              action = ":qa",
            },
          },
        },
      },
    },
  },
}