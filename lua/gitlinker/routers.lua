local utils = require("gitlinker.utils")
local range = require("gitlinker.range")

--- @class gitlinker.Builder
--- @field domain string?
--- @field user string?
--- @field repo string?
--- @field rev string?
--- @field location string?
local Builder = {}

--- @alias gitlinker.RangeStringify fun(r:gitlinker.Range?):string?
--- @param r gitlinker.Range?
--- @return string?
local function LC_range(r)
  if not range.is_range(r) then
    return nil
  end
  assert(r ~= nil)
  local tmp = string.format([[#L%d]], r.lstart)
  if type(r.lend) == "number" and r.lend > r.lstart then
    tmp = tmp .. string.format([[-L%d]], r.lend)
  end
  return tmp
end

--- @param r gitlinker.Range?
--- @return string?
local function lines_range(r)
  if not range.is_range(r) then
    return nil
  end
  assert(r ~= nil)
  local tmp = string.format([[#lines-%d]], r.lstart)
  if type(r.lend) == "number" and r.lend > r.lstart then
    tmp = tmp .. string.format([[:%d]], r.lend)
  end
  return tmp
end

-- example:
-- https://github.com/linrongbin16/gitlinker.nvim/blob/c798df0f482bd00543023c4ec016218a2a6293a0/lua/gitlinker/routers.lua#L44-L49
-- https://bitbucket.org/gitlinkernvim/gitlinker.nvim/src/dbf3922382576391fbe50b36c55066c1768b08b6/.gitignore#lines-1:6
--
--- @param lk gitlinker.Linker
--- @param range_maker gitlinker.RangeStringify
--- @return gitlinker.Builder
function Builder:new(lk, range_maker)
  local r = range_maker({ lstart = lk.lstart, lend = lk.lend })
  local o = {
    domain = string.format(
      "%s%s",
      utils.string_endswith(lk.protocol, "git@") and "https://" or lk.protocol,
      lk.host
    ),
    user = lk.user,
    repo = utils.string_endswith(lk.repo, ".git")
        and lk.repo:sub(1, #lk.repo - 4)
      or lk.repo,
    rev = lk.rev,
    location = string.format(
      "%s%s",
      lk.file
        .. (
          utils.string_endswith(lk.file, ".md", { ignorecase = true })
            and "?plain=1"
          or ""
        ),
      type(r) == "string" and r or ""
    ),
  }
  setmetatable(o, self)
  self.__index = self

  return o
end

--- @param url "blob"|"blame"|"src"|"annotate"
--- @return string
function Builder:build(url)
  return table.concat({
    self.domain,
    self.user,
    self.repo,
    url,
    self.rev,
    self.location,
  }, "/")
end

--- @param lk gitlinker.Linker
--- @return string
local function github_browse(lk)
  local builder = Builder:new(lk, LC_range)
  return builder:build("blob")
end

--- @param lk gitlinker.Linker
--- @return string
local function gitlab_browse(lk)
  local builder = Builder:new(lk, LC_range)
  return builder:build("blob")
end

--- @param lk gitlinker.Linker
--- @return string
local function bitbucket_browse(lk)
  local builder = Builder:new(lk, lines_range)
  return builder:build("src")
end

--- @param lk gitlinker.Linker
--- @return string
local function github_blame(lk)
  local builder = Builder:new(lk, LC_range)
  return builder:build("blame")
end

--- @param lk gitlinker.Linker
--- @return string
local function gitlab_blame(lk)
  local builder = Builder:new(lk, LC_range)
  return builder:build("blame")
end

--- @param lk gitlinker.Linker
--- @return string
local function bitbucket_blame(lk)
  local builder = Builder:new(lk, lines_range)
  return builder:build("annotate")
end

local M = {
  -- Builder
  Builder = Builder,

  -- line ranges
  LC_range = LC_range,
  lines_range = lines_range,

  -- browse: `/blob`, `/src`
  github_browse = github_browse,
  gitlab_browse = gitlab_browse,
  bitbucket_browse = bitbucket_browse,

  -- blame: `/blame`, `/annotate`
  github_blame = github_blame,
  gitlab_blame = gitlab_blame,
  bitbucket_blame = bitbucket_blame,
}

return M
