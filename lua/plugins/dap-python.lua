return {
  "mfussenegger/nvim-dap-python",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    local preferred_python =
      "/Users/manmohanhunjan/Developer/se-mono/dist/export/python/virtualenvs/python-default/3.11.13/bin/python"
    local python_bin = vim.fn.executable(preferred_python) == 1 and preferred_python or "python3"
    require("dap-python").setup(python_bin)
  end,
}
