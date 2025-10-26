return {
  {
    "nvim-mini/mini.pairs", -- Updated from echasnovski/mini.pairs
    opts = {
      modes = { insert = true, command = true, terminal = false },
      skip_next = [=[[%w%%%'%[%\"%.%`%$]]=],
      skip_ts = { "string" },
      skip_unbalanced = true,
      markdown = true,
      mappings = {
        ["<"] = { action = "open", pair = "<>", neigh_pattern = "[^\\%a\\%d([{\\\"'`]", register = { cr = false } },
        [">"] = { action = "close", pair = "<>", neigh_pattern = "[^\\%a\\%d)\\]}{\\\"'`]", register = { cr = false } },
      },
    },                                                                                                      },
}
