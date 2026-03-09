{pkgs}: {
  start = with pkgs.vimPlugins;
    [
      mini-nvim
      snacks-nvim
      neovim-ayu

      luasnip
      friendly-snippets
      nvim-dap
    ]
    ++ [
      (nvim-treesitter.withPlugins
        (p:
          with p; [
            tree-sitter-lua
            tree-sitter-nix
            tree-sitter-python
            tree-sitter-nu
            tree-sitter-json
            tree-sitter-bash
            tree-sitter-go
            tree-sitter-json
            tree-sitter-rust
            tree-sitter-markdown
            tree-sitter-diff
            tree-sitter-yang
          ]))
    ];

  lazy = with pkgs.vimPlugins; [
    # Language
    nvim-lspconfig
    conform-nvim

    # Navigation
    oil-nvim

    # UI
    gitsigns-nvim
    todo-comments-nvim

    # Completion
    blink-cmp

    # Debug
    nvim-dap-ui
    nvim-dap-python

    # Extra Themes
    kanso-nvim
    bamboo-nvim
    kanagawa-nvim
    gruvbox-nvim
    tokyonight-nvim
    catppuccin-nvim
  ];
}
