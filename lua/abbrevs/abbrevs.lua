-- html
vim.api.nvim_create_user_command(
  "AbbrevHtmlBasic",
  "read ~/.config/vim/abbrevs/html/basic.html", {}
)

-- dart
vim.api.nvim_create_user_command(
  "AbbrevDartBasic",
  "read ~/.config/vim/abbrevs/dart/basic.dart", {}
)
vim.api.nvim_create_user_command(
  "AbbrevDartStateful",
  "read ~/.config/vim/abbrevs/dart/stateful.dart", {}
)
vim.api.nvim_create_user_command(
  "AbbrevDartStateless",
  "read ~/.config/vim/abbrevs/dart/stateless.dart", {}
)
