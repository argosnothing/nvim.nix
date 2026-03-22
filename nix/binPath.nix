{pkgs}:
with pkgs; [
  lazygit
  fd

  # Nix
  nil
  nixd
  alejandra

  # Lua
  lua-language-server
  stylua

  # Python
  basedpyright
  ruff

  # Rust
  rust-analyzer
  lldb

  # Json
  vscode-json-languageserver
]
