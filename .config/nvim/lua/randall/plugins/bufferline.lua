return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- event = { "BufReadPre" },
  opts = {
    options = {
      offsets = {
        {
          filetype = "NvimTree",
        },
      },
      mode = "tabs",
      separator_style = "slant",
    },
  },
}
