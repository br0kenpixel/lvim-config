return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Force the statusline background to be transparent (NONE)
      opts.options.theme = "auto"
      
      -- Remove background colors from lualine structural components
      local custom_theme = require("lualine.themes.auto")
      
      -- Loop through modes and remove background colors from the middle section
      for _, mode in pairs(custom_theme) do
        if mode.c then
          mode.c.bg = "NONE"
        end
      end
      
      opts.options.theme = custom_theme
    end,
  },
}
