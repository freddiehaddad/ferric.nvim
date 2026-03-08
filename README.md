# Ferric

A metallurgy-inspired colorscheme for [Neovim](https://neovim.io) inspired by
the colors of the **Rust** programming language and the chemistry of iron
oxidation. Ships with paired **dark** and **light** palettes.

<details>
  <summary>📸 Click to View Screenshots</summary>
  <p><em>Each image is split diagonally — light theme in the upper-left half,
  dark theme in the lower-right half.</em></p>
  <img alt="mini.starter screen — light theme top-left, dark theme bottom-right"
  src="screenshots/1-combined.png" />
  <br>
  <img alt="Rust source code with syntax highlighting"
  src="screenshots/2-combined.png" />
  <br>
  <img alt="fzf-lua symbol picker with preview" src="screenshots/3-combined.png"
  />
</details>

## The Vision

**Ferric** draws from the **forge** — iron oxide, copper patina, heated metal,
and cobalt. The result is a theme that feels industrial, precise, and alive —
like staring into a blacksmith's workshop where every tool glows at a different
temperature.

The name comes from *ferric* (Fe³⁺) — iron in its oxidized state. Rust.

## Dark Palette

### Syntax

| Role        | Dark                                                        | Light                                                       |
| ----------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Keywords    | ![#c15c42](https://placehold.co/16/c15c42/c15c42) `#c15c42` | ![#8f4632](https://placehold.co/16/8f4632/8f4632) `#8f4632` |
| Functions   | ![#5aaa88](https://placehold.co/16/5aaa88/5aaa88) `#5aaa88` | ![#036836](https://placehold.co/16/036836/036836) `#036836` |
| Strings     | ![#c8a040](https://placehold.co/16/c8a040/c8a040) `#c8a040` | ![#6a4c08](https://placehold.co/16/6a4c08/6a4c08) `#6a4c08` |
| Numbers     | ![#6a88b0](https://placehold.co/16/6a88b0/6a88b0) `#6a88b0` | ![#2a4a78](https://placehold.co/16/2a4a78/2a4a78) `#2a4a78` |
| Types       | ![#5a98a0](https://placehold.co/16/5a98a0/5a98a0) `#5a98a0` | ![#066679](https://placehold.co/16/066679/066679) `#066679` |
| Constants   | ![#a76d4b](https://placehold.co/16/a76d4b/a76d4b) `#a76d4b` | ![#8c5634](https://placehold.co/16/8c5634/8c5634) `#8c5634` |
| Preprocessor| ![#a16a89](https://placehold.co/16/a16a89/a16a89) `#a16a89` | ![#8a4870](https://placehold.co/16/8a4870/8a4870) `#8a4870` |
| Builtins    | ![#a16a89](https://placehold.co/16/a16a89/a16a89) `#a16a89` | ![#8a4870](https://placehold.co/16/8a4870/8a4870) `#8a4870` |
| Properties  | ![#948576](https://placehold.co/16/948576/948576) `#948576` | ![#6a5e50](https://placehold.co/16/6a5e50/6a5e50) `#6a5e50` |
| Operators   | ![#6c7e75](https://placehold.co/16/6c7e75/6c7e75) `#6c7e75` | ![#656d68](https://placehold.co/16/656d68/656d68) `#656d68` |
| Comments    | ![#8a8073](https://placehold.co/16/8a8073/8a8073) `#8a8073` | ![#726554](https://placehold.co/16/726554/726554) `#726554` |
| Text        | ![#d0c8b8](https://placehold.co/16/d0c8b8/d0c8b8) `#d0c8b8` | ![#1f1a12](https://placehold.co/16/1f1a12/1f1a12) `#1f1a12` |
| UI accent   | ![#c08c50](https://placehold.co/16/c08c50/c08c50) `#c08c50` | ![#8a5424](https://placehold.co/16/8a5424/8a5424) `#8a5424` |

### UI Surfaces

| Role             | Dark                                                        | Light                                                       |
| ---------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Background       | ![#0e0c0a](https://placehold.co/16/0e0c0a/0e0c0a) `#0e0c0a` | ![#f4ecdc](https://placehold.co/16/f4ecdc/f4ecdc) `#f4ecdc` |
| Tab bar          | ![#161210](https://placehold.co/16/161210/161210) `#161210` | ![#ebe2cc](https://placehold.co/16/ebe2cc/ebe2cc) `#ebe2cc` |
| Floats / popups  | ![#16201e](https://placehold.co/16/16201e/16201e) `#16201e` | ![#e8e0cc](https://placehold.co/16/e8e0cc/e8e0cc) `#e8e0cc` |
| Float borders    | ![#3a4240](https://placehold.co/16/3a4240/3a4240) `#3a4240` | ![#c0b596](https://placehold.co/16/c0b596/c0b596) `#c0b596` |
| Scrollbar        | ![#1a2824](https://placehold.co/16/1a2824/1a2824) `#1a2824` | ![#d8cdb4](https://placehold.co/16/d8cdb4/d8cdb4) `#d8cdb4` |
| Selection (menu) | ![#1e3830](https://placehold.co/16/1e3830/1e3830) `#1e3830` | ![#cdc4a8](https://placehold.co/16/cdc4a8/cdc4a8) `#cdc4a8` |
| Color column     | ![#282220](https://placehold.co/16/282220/282220) `#282220` | ![#e0d4ba](https://placehold.co/16/e0d4ba/e0d4ba) `#e0d4ba` |
| Cursor line      | ![#142420](https://placehold.co/16/142420/142420) `#142420` | ![#ece1c8](https://placehold.co/16/ece1c8/ece1c8) `#ece1c8` |
| Visual selection | ![#3c2a1e](https://placehold.co/16/3c2a1e/3c2a1e) `#3c2a1e` | ![#e6d4b4](https://placehold.co/16/e6d4b4/e6d4b4) `#e6d4b4` |
| Line numbers     | ![#8a7669](https://placehold.co/16/8a7669/8a7669) `#8a7669` | ![#7e6848](https://placehold.co/16/7e6848/7e6848) `#7e6848` |
| Muted text       | ![#82796f](https://placehold.co/16/82796f/82796f) `#82796f` | ![#746a5a](https://placehold.co/16/746a5a/746a5a) `#746a5a` |
| Ghost text       | ![#484040](https://placehold.co/16/484040/484040) `#484040` | ![#b0a48e](https://placehold.co/16/b0a48e/b0a48e) `#b0a48e` |

### Diagnostics

| Role    | Swatch                                                      | Light                                                       |
| ------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Error   | ![#c15c42](https://placehold.co/16/c15c42/c15c42) `#c15c42` | ![#8f4632](https://placehold.co/16/8f4632/8f4632) `#8f4632` |
| Warning | ![#c8a040](https://placehold.co/16/c8a040/c8a040) `#c8a040` | ![#6a4c08](https://placehold.co/16/6a4c08/6a4c08) `#6a4c08` |
| Info    | ![#6a88b0](https://placehold.co/16/6a88b0/6a88b0) `#6a88b0` | ![#2a4a78](https://placehold.co/16/2a4a78/2a4a78) `#2a4a78` |
| Hint    | ![#5a98a0](https://placehold.co/16/5a98a0/5a98a0) `#5a98a0` | ![#066679](https://placehold.co/16/066679/066679) `#066679` |
| Ok      | ![#5aaa88](https://placehold.co/16/5aaa88/5aaa88) `#5aaa88` | ![#036836](https://placehold.co/16/036836/036836) `#036836` |

### Git / Diff

| Role           | Dark                                                        | Light                                                       |
| -------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Added          | ![#5aaa88](https://placehold.co/16/5aaa88/5aaa88) `#5aaa88` | ![#036836](https://placehold.co/16/036836/036836) `#036836` |
| Changed        | ![#c8a040](https://placehold.co/16/c8a040/c8a040) `#c8a040` | ![#6a4c08](https://placehold.co/16/6a4c08/6a4c08) `#6a4c08` |
| Deleted        | ![#ca5546](https://placehold.co/16/ca5546/ca5546) `#ca5546` | ![#a04030](https://placehold.co/16/a04030/a04030) `#a04030` |
| Diff add bg    | ![#204838](https://placehold.co/16/204838/204838) `#204838` | ![#cce4d4](https://placehold.co/16/cce4d4/cce4d4) `#cce4d4` |
| Diff change bg | ![#1a3838](https://placehold.co/16/1a3838/1a3838) `#1a3838` | ![#c4dcd8](https://placehold.co/16/c4dcd8/c4dcd8) `#c4dcd8` |
| Diff delete bg | ![#5a2020](https://placehold.co/16/5a2020/5a2020) `#5a2020` | ![#f4ccc0](https://placehold.co/16/f4ccc0/f4ccc0) `#f4ccc0` |

### Terminal

| Role           | Dark                                                        | Light                                                       |
| -------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Black          | ![#0e0c0a](https://placehold.co/16/0e0c0a/0e0c0a) `#0e0c0a` | ![#1f1a12](https://placehold.co/16/1f1a12/1f1a12) `#1f1a12` |
| Red            | ![#ca5546](https://placehold.co/16/ca5546/ca5546) `#ca5546` | ![#a04030](https://placehold.co/16/a04030/a04030) `#a04030` |
| Green          | ![#5aaa88](https://placehold.co/16/5aaa88/5aaa88) `#5aaa88` | ![#036836](https://placehold.co/16/036836/036836) `#036836` |
| Yellow         | ![#c8a040](https://placehold.co/16/c8a040/c8a040) `#c8a040` | ![#6a4c08](https://placehold.co/16/6a4c08/6a4c08) `#6a4c08` |
| Blue           | ![#6a88b0](https://placehold.co/16/6a88b0/6a88b0) `#6a88b0` | ![#2a4a78](https://placehold.co/16/2a4a78/2a4a78) `#2a4a78` |
| Magenta        | ![#a16a89](https://placehold.co/16/a16a89/a16a89) `#a16a89` | ![#8a4870](https://placehold.co/16/8a4870/8a4870) `#8a4870` |
| Cyan           | ![#5a98a0](https://placehold.co/16/5a98a0/5a98a0) `#5a98a0` | ![#066679](https://placehold.co/16/066679/066679) `#066679` |
| White          | ![#d0c8b8](https://placehold.co/16/d0c8b8/d0c8b8) `#d0c8b8` | ![#ebe2cc](https://placehold.co/16/ebe2cc/ebe2cc) `#ebe2cc` |
| Bright Black   | ![#8a8073](https://placehold.co/16/8a8073/8a8073) `#8a8073` | ![#6a5e50](https://placehold.co/16/6a5e50/6a5e50) `#6a5e50` |
| Bright Red     | ![#d87068](https://placehold.co/16/d87068/d87068) `#d87068` | ![#753929](https://placehold.co/16/753929/753929) `#753929` |
| Bright Green   | ![#80c8a8](https://placehold.co/16/80c8a8/80c8a8) `#80c8a8` | ![#00572b](https://placehold.co/16/00572b/00572b) `#00572b` |
| Bright Yellow  | ![#d8b860](https://placehold.co/16/d8b860/d8b860) `#d8b860` | ![#614507](https://placehold.co/16/614507/614507) `#614507` |
| Bright Blue    | ![#8aa8c8](https://placehold.co/16/8aa8c8/8aa8c8) `#8aa8c8` | ![#1a3a6a](https://placehold.co/16/1a3a6a/1a3a6a) `#1a3a6a` |
| Bright Magenta | ![#b888a0](https://placehold.co/16/b888a0/b888a0) `#b888a0` | ![#6c3858](https://placehold.co/16/6c3858/6c3858) `#6c3858` |
| Bright Cyan    | ![#80b8b0](https://placehold.co/16/80b8b0/80b8b0) `#80b8b0` | ![#005566](https://placehold.co/16/005566/005566) `#005566` |
| Bright White   | ![#e8e0d0](https://placehold.co/16/e8e0d0/e8e0d0) `#e8e0d0` | ![#fcf6e2](https://placehold.co/16/fcf6e2/fcf6e2) `#fcf6e2` |

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

### vim.pack

```lua
vim.pack.add({ "https://github.com/freddiehaddad/ferric.nvim" })
-- vim.cmd.background("light")
vim.cmd.colorscheme("ferric")
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

## Switching Between Dark and Light

Ferric selects its palette from `vim.o.background`. Set it before
(or alongside) `:colorscheme` to pick a mode:

```lua
vim.o.background = "light"  -- or "dark" (default)
vim.cmd.colorscheme("ferric")
```

`palette_overrides` are applied on top of whichever palette is active and
follow you across mode switches.

To track your system or terminal preference, re-source the colorscheme
whenever `background` changes:

```lua
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = function()
    if vim.g.colors_name == "ferric" then
      vim.cmd.colorscheme("ferric")
    end
  end,
})
```

The palette tables themselves are exposed under `ferric.palettes`:

```lua
local dark = require("ferric.palettes.dark")
local light = require("ferric.palettes.light")
```

## Recommended Font Setup

Pair with **[Comic Code](https://tosche.net/fonts/comic-code)** monospaced font
for the full aesthetic or one of the free alternatives:

- [Comic Mono](https://github.com/dtinth/comic-mono-font)
- [Serious Shanns](https://github.com/kaBeech/serious-shanns)

## License

[MIT](LICENSE)
