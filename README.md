# Ferric

A metallurgy-inspired dark theme for [Neovim](https://neovim.io) inspired by
the colors of the **Rust** programming language and the chemistry of iron
oxidation.

## The Vision

**Ferric** draws from the **forge** — iron oxide, copper patina, heated metal,
and cobalt. The result is a theme that feels industrial, precise, and alive —
like staring into a blacksmith's workshop where every tool glows at a different
temperature.

The name comes from *ferric* (Fe³⁺) — iron in its oxidized state. Rust.

### Syntax Palette

| Role        | Pigment     | Swatch                                            | Hex       |
| ------------| ------------| ------------------------------------------------- | --------- |
| Keywords    | Rust        | ![#cc5030](https://placehold.co/16/cc5030/cc5030) | `#cc5030` |
| Functions   | Verdigris   | ![#5aaa88](https://placehold.co/16/5aaa88/5aaa88) | `#5aaa88` |
| Strings     | Forge Amber | ![#c8a040](https://placehold.co/16/c8a040/c8a040) | `#c8a040` |
| Types       | Copper      | ![#c08050](https://placehold.co/16/c08050/c08050) | `#c08050` |
| Constants   | Ember       | ![#a86848](https://placehold.co/16/a86848/a86848) | `#a86848` |
| Numbers     | Cobalt      | ![#6a88b0](https://placehold.co/16/6a88b0/6a88b0) | `#6a88b0` |
| Properties  | Tarnish     | ![#908070](https://placehold.co/16/908070/908070) | `#908070` |
| Operators   | Cast Iron   | ![#607068](https://placehold.co/16/607068/607068) | `#607068` |
| Comments    | Slag        | ![#565050](https://placehold.co/16/565050/565050) | `#565050` |
| Punctuation | Mill Scale  | ![#585050](https://placehold.co/16/585050/585050) | `#585050` |
| Text        | Limestone   | ![#d0c8b8](https://placehold.co/16/d0c8b8/d0c8b8) | `#d0c8b8` |
| Background  | Void        | ![#000000](https://placehold.co/16/000000/000000) | `#000000` |
| UI surfaces | Quench Dark | ![#121a18](https://placehold.co/16/121a18/121a18) | `#121a18` |

### Design Principles

- **Rust-inspired warm cluster** — keywords, types, constants, and strings
  share a red-orange-amber arc (0°–45°), differentiated by saturation and
  luminance like metals at different temperatures in a forge.
- **Two cool outliers from oxidation** — **verdigris** (copper patina green)
  for functions and **cobalt** (cobalt blue pigment) for numbers stand apart
  from the warm mass like oxidation products stand apart from raw metal.
- **Scaffolding as raw iron** — operators and punctuation use cool iron-gray
  tones that recede behind the warm syntax colors.
- **True black + cool chrome** — `#000000` background, cool near-black surfaces
  (`#121a18`, `#0c0808`).

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "freddiehaddad/ferric.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("ferric")
  end,
}
```

### Manual

Clone this repository into your Neovim packages directory:

```sh
git clone https://github.com/freddiehaddad/ferric.nvim \
  ~/.local/share/nvim/site/pack/plugins/start/ferric.nvim
```

Then add to your config:

```lua
vim.cmd.colorscheme("ferric")
```

## Configuration

Ferric can be configured before loading the colorscheme. The defaults are:

```lua
require("ferric").setup({
  terminal_colors = true,
  palette_overrides = {},
  overrides = {},
})

vim.cmd.colorscheme("ferric")
```

## Recommended Font Setup

Pair with a **Comic Sans–style monospaced font** for the full aesthetic:

```lua
-- Comic Mono — a free, monospaced Comic Sans alternative
-- Install from: https://dtinth.github.io/comic-mono-font/
vim.o.guifont = "Comic Mono:h16"

-- Alternative options (install separately):
--   vim.o.guifont = "Comic Code:h16"          -- commercial
--   vim.o.guifont = "Comic Shanns Mono:h16"   -- free alternative
```

## License

MIT
