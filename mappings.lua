---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["s"] = { ":HopChar1<cr>", "search character", opts = { nowait = true } },
    ["<leader>e"] = { ":NvimTreeToggle<cr>", "toggle tree", opts = { nowait = true } },
    -- close buffer + hide terminal buffer
    ["<leader>o"] = {
      function()
        require("nvchad_ui.tabufline").closeOtherBufs()
      end,
      "Close Other buffers",
    },
    ["q"] = {
      ":close<cr>",
      "Close panel",
    },
    ["<leader>a"] = {
      ":TroubleToggle<cr>",
      "Toggle Trouble panel",
    },
  },
}

M.disabled = {
  n = {
    ["<leader>b"] = "",
  },
}

-- more keybinds!

return M
