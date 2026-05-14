return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio", -- required by dap-ui
      "leoluz/nvim-dap-go",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      require("dap-go").setup()
      dapui.setup()

      -- Auto-open/close the UI when a debug session starts/ends
      dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
      dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
      dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

      -- Keymaps
      vim.keymap.set("n", "<F5>",  dap.continue,          { desc = "Debug: Continue" })
      vim.keymap.set("n", "<F10>", dap.step_over,         { desc = "Debug: Step Over" })
      vim.keymap.set("n", "<F11>", dap.step_into,         { desc = "Debug: Step Into" })
      vim.keymap.set("n", "<F12>", dap.step_out,          { desc = "Debug: Step Out" })
      vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
      vim.keymap.set("n", "<leader>dB", function()
        dap.set_breakpoint(vim.fn.input("Condition: "))
      end, { desc = "Debug: Conditional Breakpoint" })
      vim.keymap.set("n", "<leader>du", dapui.toggle,     { desc = "Debug: Toggle UI" })
      vim.keymap.set("n", "<leader>dt", dap.terminate,    { desc = "Debug: Terminate" })
    end,
  },
}
