local overrides = require "configs.overrides"

return {
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = overrides.blankline,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "nvchad/minty",
    cmd = { "Shades", "Huefy" },
    opts = { huefy = { border = false } },
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { { "nvim-treesitter/nvim-treesitter" } },
  },

  -- formating
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  --linting
  {
    "mfussenegger/nvim-lint",
    event = "InsertEnter",
    config = function()
      require "configs.lint"
    end,
    enabled = false,
  },

  -- github copilot
  -- {
  --   "zbirenbaum/copilot.lua",
  --   event = "InsertEnter",
  --   opts = overrides.copilot,
  -- },

  -- copilot integration for nvim-cmp and copilot-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- {
      --   "zbirenbaum/copilot-cmp",
      --   config = function()
      --     require("copilot_cmp").setup()
      --   end,
      -- },
    },
    opts = overrides.nvimcmp,
  },

  { "hrsh7th/cmp-nvim-lsp-signature-help" },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    lazy = true,
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  -- project wide search and replace
  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    opts = { open_cmd = "noswapfile vnew" },
  },

  -- colors
  {
    "uga-rosa/ccc.nvim",
    cmd = "CccPick",
    opts = overrides.ccc,
  },

  -- Lazy Git
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
  },

  -- Scrollbar
  {
    "dstein64/nvim-scrollview",
    event = "BufEnter",
    lazy = true,
  },

  {
    "numToStr/Comment.nvim",
    config = function()
      require "configs.comment"
    end,
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
  },

  {
    "mattn/emmet-vim",
    ft = {
      "html",
      "css",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    cmd = "Emmet",
  },

  {
    "Fymyte/rasi.vim",
    ft = { "rasi" },
  },

  {
    "elkowar/yuck.vim",
    ft = { "yuck" },
  },

  -- {
  -- 	"mrcjkb/rustaceanvim",
  -- 	ft = { "rust" },
  -- },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      lsp = {
        signature = {
          enabled = false,
        },
      },
    },
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
    "barrett-ruth/live-server.nvim",
    build = "npm install -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = function()
      require("live-server").setup {}
    end,
  },
}
