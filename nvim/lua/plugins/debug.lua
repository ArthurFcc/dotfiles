return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      -- Configure Lua debug adapter
      dap.adapters.lua = {
        type = "executable",
        command = "lua",
        args = { "-e", "package.path='/usr/local/share/lua/5.3/?.lua;'..package.path", "-i" },
      }

      dap.configurations.lua = {
        {
          type = "lua",
          request = "launch",
          name = "Launch Lua",
          program = "${file}",
          cwd = "${workspaceFolder}",
          stopOnEntry = true,
          args = {},
        },
      }
    end,
  },
}
