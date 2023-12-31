local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettierd.with {
     filetypes = { "html", "json", "svelte", "markdown", "css", "javascript", "javascriptreact" },
  },
  -- python
  b.formatting.black,
  b.formatting.isort,

  -- diagnostics
  b.diagnostics.ruff,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
  
  -- go
  b.formatting.goimports,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
