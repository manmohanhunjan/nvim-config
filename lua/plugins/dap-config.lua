return {
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    config = function()
      local dap = require("dap")

      dap.configurations.python = {
        {
          name = "Debug SE API Service",
          type = "python",
          request = "launch",
          program = "/Users/manmohanhunjan/Developer/se-mono/src/py/apis/api/se-api-svc/se_api_svc/run_local.py",
          cwd = "/Users/manmohanhunjan/Developer/se-mono",
          env = {
            PYTHONPATH = "/Users/manmohanhunjan/Developer/se-mono/src/py",
          },
          justMyCode = false,
          console = "integratedTerminal",
        },
      }
    end,
  },
}
