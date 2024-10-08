require("lualine").setup({
  options = {
    theme = custom_cat,
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = {
      "mode",
    },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = {
      {
        "filename",
        path = 1,
      },
    },
    lualine_x = { "filetype" },
    lualine_y = {
      "require'wrapping'.get_current_mode()",
    },
    lualine_z = { "progress" },
  },
  extensions = {
    "toggleterm",
    "fugitive",
  },
})
