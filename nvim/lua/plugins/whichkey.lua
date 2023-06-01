local wk = require('which-key')

wk.register({
  g = {
    name = "Goto",
      g = { "<Cmd>lua require('telescope.builtin').live_grep()<CR>", "Live Grep"},
      h = {
        name = "Github Utils",
        o = { "<Cmd>lua require('githubutils').open()<CR>", "Open" },
        O = { "<Cmd>lua require('githubutils').repo()<CR>", "Repo" },
        p = { "<Cmd>lua require('githubutils').pulls()<CR>", "Pulls" },
        i = { "<Cmd>lua require('githubutils').issues()<CR>", "Issues" },
        a = { "<Cmd>lua require('githubutils').actions()<CR>", "Actions" },
      },
      s = {
        name = "Symbols",
        d = { "<Cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", "Document Symbols" },
        w = { "<Cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>", "Workspace Symbols" }
      },
      D = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
      d = { "<Cmd>lua require('telescope.builtin').lsp_definitions()<CR>", "Definitions"},
      i = { "<Cmd>lua require('telescope.builtin').lsp_implementations()<CR>", "Implementations" },
      r = { "<Cmd>lua require('telescope.builtin').lsp_references()<CR>", "References" },
      t = { "<Cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>", "Type Definitions" },
      k = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "Show Function Docs" }
  },
}, { prefix = "<leader>" })

wk.register({
  d = {
    name = "Debug",
    e = { "<Cmd>lua vim.diagnostic.open_float(0, {scope='line'})<CR>", "Show error in float" },
    w = { "<Cmd>TroubleToggle workspace_diagnostics<CR>", "Workspace Diagnostics" },
    d = { "<Cmd>TroubleToggle document_diagnostics<CR>", "Document Diagnostics" },
  },
}, { prefix = "<leader>" })


wk.register({
  r = {
    name = "Refactor",
    n = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
    a = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", "Actions"},
  },
  f = {
    s = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "LSP Formatting" },
  }
}, { prefix = "<leader>" })

wk.register({
  x = {
    name = "Run",
    x = { "<Cmd>JestIntegrated<CR>", "Jest integrated test" },
  }
}, { prefix = "<leader>" })

