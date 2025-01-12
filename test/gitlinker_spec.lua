local cwd = vim.fn.getcwd()

describe("gitlinker", function()
  local assert_eq = assert.is_equal
  local assert_true = assert.is_true
  local assert_false = assert.is_false

  local gitlinker = require("gitlinker")

  before_each(function()
    vim.api.nvim_command("cd " .. cwd)
    vim.opt.swapfile = false
    gitlinker.setup()
    vim.cmd([[ edit lua/gitlinker.lua ]])
  end)

  local utils = require("gitlinker.utils")
  describe("_browse/_blame", function()
    it("without line numbers", function()
      local actual = gitlinker._browse({
        remote_url = "git@github.com:linrongbin16/gitlinker.nvim.git",
        protocol = "git@",
        host = "github.com",
        user = "linrongbin16",
        repo = "gitlinker.nvim.git",
        rev = "399b1d05473c711fc5592a6ffc724e231c403486",
        file = "lua/gitlinker/logger.lua",
        file_changed = false,
        lstart = 1,
        lend = 1,
      } --[[@as gitlinker.Linker]], true)
      assert_eq(
        actual,
        "https://github.com/linrongbin16/gitlinker.nvim/blob/399b1d05473c711fc5592a6ffc724e231c403486/lua/gitlinker/logger.lua#L1"
      )
    end)
    it("with line start", function()
      local actual = gitlinker._browse({
        remote_url = "git@github.com:linrongbin16/gitlinker.nvim.git",
        protocol = "git@",
        host = "github.com",
        user = "linrongbin16",
        repo = "gitlinker.nvim.git",
        rev = "399b1d05473c711fc5592a6ffc724e231c403486",
        file = "lua/gitlinker/logger.lua",
        lstart = 1,
        lend = 1,
        file_changed = false,
      }--[[@as gitlinker.Linker]], true)
      assert_eq(
        actual,
        "https://github.com/linrongbin16/gitlinker.nvim/blob/399b1d05473c711fc5592a6ffc724e231c403486/lua/gitlinker/logger.lua#L1"
      )
    end)
    it("with same line start and line end", function()
      local actual = gitlinker._browse({
        remote_url = "git@github.com:linrongbin16/gitlinker.nvim.git",
        protocol = "git@",
        host = "github.com",
        user = "linrongbin16",
        repo = "gitlinker.nvim.git",
        rev = "399b1d05473c711fc5592a6ffc724e231c403486",
        file = "lua/gitlinker/logger.lua",
        lstart = 1,
        lend = 1,
        file_changed = false,
      }--[[@as gitlinker.Linker]], true)
      assert_eq(
        actual,
        "https://github.com/linrongbin16/gitlinker.nvim/blob/399b1d05473c711fc5592a6ffc724e231c403486/lua/gitlinker/logger.lua#L1"
      )
    end)
    it("with different line start and line end", function()
      local actual = gitlinker._browse({
        remote_url = "git@github.com:linrongbin16/gitlinker.nvim.git",
        protocol = "git@",
        host = "github.com",
        user = "linrongbin16",
        repo = "gitlinker.nvim.git",
        rev = "399b1d05473c711fc5592a6ffc724e231c403486",
        file = "lua/gitlinker/logger.lua",
        lstart = 2,
        lend = 5,
        file_changed = false,
      }--[[@as gitlinker.Linker]], true)
      assert_eq(
        actual,
        "https://github.com/linrongbin16/gitlinker.nvim/blob/399b1d05473c711fc5592a6ffc724e231c403486/lua/gitlinker/logger.lua#L2-L5"
      )
    end)
    it("without line numbers", function()
      local actual = gitlinker._blame({
        remote_url = "git@github.com:linrongbin16/gitlinker.nvim.git",
        protocol = "git@",
        host = "github.com",
        user = "linrongbin16",
        repo = "gitlinker.nvim.git",
        rev = "399b1d05473c711fc5592a6ffc724e231c403486",
        file = "lua/gitlinker/logger.lua",
        file_changed = false,
        lstart = 1,
        lend = 1,
      } --[[@as gitlinker.Linker]], true)
      assert_eq(
        actual,
        "https://github.com/linrongbin16/gitlinker.nvim/blame/399b1d05473c711fc5592a6ffc724e231c403486/lua/gitlinker/logger.lua#L1"
      )
    end)
    it("with line start", function()
      local actual = gitlinker._blame({
        remote_url = "git@github.com:linrongbin16/gitlinker.nvim.git",
        protocol = "git@",
        host = "github.com",
        user = "linrongbin16",
        repo = "gitlinker.nvim.git",
        rev = "399b1d05473c711fc5592a6ffc724e231c403486",
        file = "lua/gitlinker/logger.lua",
        lstart = 1,
        lend = 2,
        file_changed = false,
      }--[[@as gitlinker.Linker]], true)
      assert_eq(
        actual,
        "https://github.com/linrongbin16/gitlinker.nvim/blame/399b1d05473c711fc5592a6ffc724e231c403486/lua/gitlinker/logger.lua#L1-L2"
      )
    end)
  end)
end)
