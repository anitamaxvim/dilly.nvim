## Dilly

A beautiful colorscheme for Neovim written in Lua.

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "yourusername/your-colorscheme",
  lazy = false,
  priority = 1000,
  opts = {
    -- Override colors (see customization below)
  },
}
```

### Using [LazyVim](https://github.com/LazyVim/LazyVim)

Add the following to your LazyVim `lua/plugins/colorscheme.lua`:

```lua
return {
  {
    "anitamaxvim/dilly.nvim", 
    lazy = false,
    priority = 1000,
    opts = {
      -- Override colors (see customization below)
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dilly",
    },
  },
}
```

## Customization

You can customize the colorscheme by passing options to the setup function:

```lua
require("your_colorscheme").setup({
  -- Override specific colors
  bg = "#2d2d2d",
  red = "#ff6c6c",
  -- ... other color overrides
})
```
