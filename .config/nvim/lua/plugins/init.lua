return {
  "tpope/vim-sleuth",

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-ui-select.nvim" },
    },
  },
  { "nvim-lualine/lualine.nvim",       dependencies = { "nvim-tree/nvim-web-devicons", lazy = true } },

  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
  { "Bilal2453/luvit-meta",            lazy = true },

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "nvim-treesitter/playground",
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  "mbbill/undotree",
  "mhartington/formatter.nvim",

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v4.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },             -- Required
      { "williamboman/mason.nvim" },           -- Optional
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },     -- Required
      { "hrsh7th/cmp-nvim-lsp" }, -- Required
      { "L3MON4D3/LuaSnip" },     -- Required
      { "hrsh7th/cmp-nvim-lua" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
    },
  },

  "windwp/nvim-autopairs",
  "windwp/nvim-ts-autotag",

  { "L3MON4D3/LuaSnip",      dependencies = { "rafamadriz/friendly-snippets" } },
  "saadparwaiz1/cmp_luasnip",

  {
    "mrcjkb/haskell-tools.nvim",
    version = "^3",
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
  },

  {
    "kylechui/nvim-surround",
    version = "*",
  },

  "tpope/vim-fugitive",

  "numToStr/Comment.nvim",

  "Wansmer/treesj",

  { "kevinhwang91/nvim-bqf", ft = "qf" },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },

  {
    "smjonas/inc-rename.nvim",
  },

  { "echasnovski/mini.nvim",                  version = "*" },

  "andrewferrier/wrapping.nvim",

  { "catppuccin/nvim",                        name = "catppuccin", priority = 1000 },

  { "mistricky/codesnap.nvim",                build = "make" },

  -- {
  --   "m4xshen/hardtime.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  -- },

  { 'ThePrimeagen/vim-be-good' },

  { 'nvim-telescope/telescope-ui-select.nvim' },

  { 'github/copilot.vim' },
}
