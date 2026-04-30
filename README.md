# Neovim Config

My Neovim config, built on [LazyVim](https://github.com/LazyVim/LazyVim).

## Install

```bash
git clone https://github.com/Samyam412/nvim-config.git ~/.config/nvim
nvim --headless "+Lazy! sync" +qa
```

## Notes

- Requires Neovim 0.9+.
- Most common tools install through `mason.nvim`.

## Language Servers

Installed through `mason.nvim` in this config:

- `css-lsp`
- `tailwindcss-language-server`
- `typescript-language-server`

Need to exist on machine manually:

- `ruby-lsp`

Project-dependent / optional:

- `phpactor` if you set `lsp = "phpactor"`
- `intelephense` if you set `lsp = "intelephense"`
