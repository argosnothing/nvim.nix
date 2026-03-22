{pkgs}:
with pkgs; [
  # General
  lazygit

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

  # Json
  vscode-json-languageserver
]
