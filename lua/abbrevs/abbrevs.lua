-- cpp
vim.api.nvim_create_user_command(
  "AbbrevCppFastio",
  "read ~/.config/nvim/lua/abbrevs/cpp/fastio.cpp", {}
)
vim.api.nvim_create_user_command(
  "AbbrevCppIsPrime",
  "read ~/.config/nvim/lua/abbrevs/cpp/isprime.cpp", {}
)

-- html
vim.api.nvim_create_user_command(
  "AbbrevHtmlBasic",
  "read ~/.config/nvim/lua/abbrevs/html/basic.html", {}
)

-- dart
vim.api.nvim_create_user_command(
  "AbbrevDartBasic",
  "read ~/.config/nvim/lua/abbrevs/dart/basic.dart", {}
)
vim.api.nvim_create_user_command(
  "AbbrevDartStateful",
  "read ~/.config/nvim/lua/abbrevs/dart/stateful.dart", {}
)
vim.api.nvim_create_user_command(
  "AbbrevDartStateless",
  "read ~/.config/nvim/lua/abbrevs/dart/stateless.dart", {}
)
