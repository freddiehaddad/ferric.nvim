# Ferric

A metallurgy-inspired colorscheme for [Neovim](https://neovim.io) inspired by
the colors of the **Rust** programming language and the chemistry of iron
oxidation. Ships with paired **dark** and **light** palettes.

<details>
  <summary>📸 Click to View Screenshots</summary>
  <p><em>Each image is split diagonally — light theme in the upper-left half, dark theme in the lower-right half.</em></p>
  <img alt="mini.starter screen — light theme top-left, dark theme bottom-right" src="screenshots/1-combined.png" />
  <br>
  <img alt="Rust source code with syntax highlighting" src="screenshots/2-combined.png" />
  <br>
  <img alt="fzf-lua symbol picker with preview" src="screenshots/3-combined.png" />
</details>

## The Vision

**Ferric** draws from the **forge** — iron oxide, copper patina, heated metal,
and cobalt. The result is a theme that feels industrial, precise, and alive —
like staring into a blacksmith's workshop where every tool glows at a different
temperature.

The name comes from *ferric* (Fe³⁺) — iron in its oxidized state. Rust.

## Design Philosophy

Ferric treats color as a tool, not decoration. It follows the argument in
Nikita Prokopov's [*"I am sorry, but everyone is getting syntax highlighting
wrong"*](https://tonsky.me/blog/syntax-highlighting/): if everything is
highlighted, nothing stands out.

- **Highlight what you read for** — comments, strings, numbers, constants, and
  function/type *definitions*. These are the landmarks you scan for.
- **Dim the machinery** — keywords (`if`, `for`, `let`, `pub`, `mut`), function
  *calls*, variables, and punctuation fall back to plain text. Most code is
  these; coloring them is noise.
- **Reserve color for meaning** — red means *errors only*; magenta flags
  *hazards* — code the language marks as handle-with-care, like Rust's
  `unsafe`. Each rare color carries a single, unambiguous meaning.
- **Hold the UI to the same standard** — the current line number, the selected
  completion/picker item, diagnostics, and the active mode stand out; relative
  line numbers, inactive windows, and decorative chrome recede.

The payoff is calm code where the handful of things that matter genuinely pop.

Highlighting is driven by **Treesitter** captures and **LSP semantic tokens**
(with classic syntax groups as a fallback), so these rules apply to *any*
language with a parser or language server — the definition-vs-call distinction,
primitives, dimmed keywords, and macros all work the same in, e.g., C via
`clangd` as in Rust via `rust-analyzer`. The lone language-specific accent today
is the **hazard** color (magenta): it currently lights up Rust's `unsafe`, and
is reserved for any equivalent "handle with care" construct other languages
expose.

## Palette

### Syntax

| Role              | Dark                                                        | Light                                                       |
| ----------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Comments          | ![#c7ab35](https://placehold.co/16/c7ab35/c7ab35) `#c7ab35` | ![#896d00](https://placehold.co/16/896d00/896d00) `#896d00` |
| Strings           | ![#50b27a](https://placehold.co/16/50b27a/50b27a) `#50b27a` | ![#007c48](https://placehold.co/16/007c48/007c48) `#007c48` |
| Numbers           | ![#cc7d2a](https://placehold.co/16/cc7d2a/cc7d2a) `#cc7d2a` | ![#934a00](https://placehold.co/16/934a00/934a00) `#934a00` |
| Constants         | ![#cc7d2a](https://placehold.co/16/cc7d2a/cc7d2a) `#cc7d2a` | ![#934a00](https://placehold.co/16/934a00/934a00) `#934a00` |
| Functions         | ![#5290d3](https://placehold.co/16/5290d3/5290d3) `#5290d3` | ![#1e5d9c](https://placehold.co/16/1e5d9c/1e5d9c) `#1e5d9c` |
| Types             | ![#2ea3a9](https://placehold.co/16/2ea3a9/2ea3a9) `#2ea3a9` | ![#007379](https://placehold.co/16/007379/007379) `#007379` |
| Parameters        | ![#8aa69a](https://placehold.co/16/8aa69a/8aa69a) `#8aa69a` | ![#375449](https://placehold.co/16/375449/375449) `#375449` |
| Hazard            | ![#c16ca6](https://placehold.co/16/c16ca6/c16ca6) `#c16ca6` | ![#93427c](https://placehold.co/16/93427c/93427c) `#93427c` |
| Keywords / macros | ![#d0c8b8](https://placehold.co/16/d0c8b8/d0c8b8) `#d0c8b8` | ![#1f1a12](https://placehold.co/16/1f1a12/1f1a12) `#1f1a12` |
| Punctuation       | ![#8a8073](https://placehold.co/16/8a8073/8a8073) `#8a8073` | ![#726554](https://placehold.co/16/726554/726554) `#726554` |
| Text              | ![#d0c8b8](https://placehold.co/16/d0c8b8/d0c8b8) `#d0c8b8` | ![#1f1a12](https://placehold.co/16/1f1a12/1f1a12) `#1f1a12` |
| UI accent         | ![#c48e3f](https://placehold.co/16/c48e3f/c48e3f) `#c48e3f` | ![#895600](https://placehold.co/16/895600/895600) `#895600` |

### UI Surfaces

| Role             | Dark                                                        | Light                                                       |
| ---------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Background       | ![#0e0c0a](https://placehold.co/16/0e0c0a/0e0c0a) `#0e0c0a` | ![#faf4e8](https://placehold.co/16/faf4e8/faf4e8) `#faf4e8` |
| Tab bar          | ![#161210](https://placehold.co/16/161210/161210) `#161210` | ![#f1ead9](https://placehold.co/16/f1ead9/f1ead9) `#f1ead9` |
| Floats / popups  | ![#16201e](https://placehold.co/16/16201e/16201e) `#16201e` | ![#eee8d9](https://placehold.co/16/eee8d9/eee8d9) `#eee8d9` |
| Float borders    | ![#3a4240](https://placehold.co/16/3a4240/3a4240) `#3a4240` | ![#c5bda5](https://placehold.co/16/c5bda5/c5bda5) `#c5bda5` |
| Scrollbar        | ![#1a2824](https://placehold.co/16/1a2824/1a2824) `#1a2824` | ![#ddd5c2](https://placehold.co/16/ddd5c2/ddd5c2) `#ddd5c2` |
| Selection (menu) | ![#2e564a](https://placehold.co/16/2e564a/2e564a) `#2e564a` | ![#bdb189](https://placehold.co/16/bdb189/bdb189) `#bdb189` |
| Color column     | ![#282220](https://placehold.co/16/282220/282220) `#282220` | ![#e5dcc9](https://placehold.co/16/e5dcc9/e5dcc9) `#e5dcc9` |
| Cursor line      | ![#142420](https://placehold.co/16/142420/142420) `#142420` | ![#f1e9d6](https://placehold.co/16/f1e9d6/f1e9d6) `#f1e9d6` |
| Visual selection | ![#3c2a1e](https://placehold.co/16/3c2a1e/3c2a1e) `#3c2a1e` | ![#eadcc4](https://placehold.co/16/eadcc4/eadcc4) `#eadcc4` |
| Line numbers     | ![#595049](https://placehold.co/16/595049/595049) `#595049` | ![#958a81](https://placehold.co/16/958a81/958a81) `#958a81` |
| Current line nr  | ![#c48e3f](https://placehold.co/16/c48e3f/c48e3f) `#c48e3f` | ![#895600](https://placehold.co/16/895600/895600) `#895600` |
| Muted text       | ![#82796f](https://placehold.co/16/82796f/82796f) `#82796f` | ![#746a5a](https://placehold.co/16/746a5a/746a5a) `#746a5a` |
| Ghost text       | ![#484040](https://placehold.co/16/484040/484040) `#484040` | ![#b0a48e](https://placehold.co/16/b0a48e/b0a48e) `#b0a48e` |

### Diagnostics

| Role    | Dark                                                        | Light                                                       |
| ------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Error   | ![#cf4238](https://placehold.co/16/cf4238/cf4238) `#cf4238` | ![#8a0000](https://placehold.co/16/8a0000/8a0000) `#8a0000` |
| Warning | ![#c7ab35](https://placehold.co/16/c7ab35/c7ab35) `#c7ab35` | ![#896d00](https://placehold.co/16/896d00/896d00) `#896d00` |
| Info    | ![#5290d3](https://placehold.co/16/5290d3/5290d3) `#5290d3` | ![#1e5d9c](https://placehold.co/16/1e5d9c/1e5d9c) `#1e5d9c` |
| Hint    | ![#2ea3a9](https://placehold.co/16/2ea3a9/2ea3a9) `#2ea3a9` | ![#007379](https://placehold.co/16/007379/007379) `#007379` |
| Ok      | ![#50b27a](https://placehold.co/16/50b27a/50b27a) `#50b27a` | ![#007c48](https://placehold.co/16/007c48/007c48) `#007c48` |

### Git / Diff

| Role           | Dark                                                        | Light                                                       |
| -------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Added          | ![#50b27a](https://placehold.co/16/50b27a/50b27a) `#50b27a` | ![#007c48](https://placehold.co/16/007c48/007c48) `#007c48` |
| Changed        | ![#c7ab35](https://placehold.co/16/c7ab35/c7ab35) `#c7ab35` | ![#896d00](https://placehold.co/16/896d00/896d00) `#896d00` |
| Deleted        | ![#d45443](https://placehold.co/16/d45443/d45443) `#d45443` | ![#9c1b10](https://placehold.co/16/9c1b10/9c1b10) `#9c1b10` |
| Diff add bg    | ![#204838](https://placehold.co/16/204838/204838) `#204838` | ![#d4ecdc](https://placehold.co/16/d4ecdc/d4ecdc) `#d4ecdc` |
| Diff change bg | ![#1a3838](https://placehold.co/16/1a3838/1a3838) `#1a3838` | ![#cce4e0](https://placehold.co/16/cce4e0/cce4e0) `#cce4e0` |
| Diff delete bg | ![#5a2020](https://placehold.co/16/5a2020/5a2020) `#5a2020` | ![#fcd4c8](https://placehold.co/16/fcd4c8/fcd4c8) `#fcd4c8` |

### Terminal

| Role           | Dark                                                        | Light                                                       |
| -------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| Black          | ![#0e0c0a](https://placehold.co/16/0e0c0a/0e0c0a) `#0e0c0a` | ![#1f1a12](https://placehold.co/16/1f1a12/1f1a12) `#1f1a12` |
| Red            | ![#d45443](https://placehold.co/16/d45443/d45443) `#d45443` | ![#9c1b10](https://placehold.co/16/9c1b10/9c1b10) `#9c1b10` |
| Green          | ![#50b27a](https://placehold.co/16/50b27a/50b27a) `#50b27a` | ![#007c48](https://placehold.co/16/007c48/007c48) `#007c48` |
| Yellow         | ![#c7ab35](https://placehold.co/16/c7ab35/c7ab35) `#c7ab35` | ![#896d00](https://placehold.co/16/896d00/896d00) `#896d00` |
| Blue           | ![#5290d3](https://placehold.co/16/5290d3/5290d3) `#5290d3` | ![#1e5d9c](https://placehold.co/16/1e5d9c/1e5d9c) `#1e5d9c` |
| Magenta        | ![#c16ca6](https://placehold.co/16/c16ca6/c16ca6) `#c16ca6` | ![#93427c](https://placehold.co/16/93427c/93427c) `#93427c` |
| Cyan           | ![#2ea3a9](https://placehold.co/16/2ea3a9/2ea3a9) `#2ea3a9` | ![#007379](https://placehold.co/16/007379/007379) `#007379` |
| White          | ![#d0c8b8](https://placehold.co/16/d0c8b8/d0c8b8) `#d0c8b8` | ![#6a5e50](https://placehold.co/16/6a5e50/6a5e50) `#6a5e50` |
| Bright Black   | ![#8a8073](https://placehold.co/16/8a8073/8a8073) `#8a8073` | ![#746a5a](https://placehold.co/16/746a5a/746a5a) `#746a5a` |
| Bright Red     | ![#eb6956](https://placehold.co/16/eb6956/eb6956) `#eb6956` | ![#830000](https://placehold.co/16/830000/830000) `#830000` |
| Bright Green   | ![#66c78e](https://placehold.co/16/66c78e/66c78e) `#66c78e` | ![#006633](https://placehold.co/16/006633/006633) `#006633` |
| Bright Yellow  | ![#dcc04e](https://placehold.co/16/dcc04e/dcc04e) `#dcc04e` | ![#735700](https://placehold.co/16/735700/735700) `#735700` |
| Bright Blue    | ![#66a4e9](https://placehold.co/16/66a4e9/66a4e9) `#66a4e9` | ![#004784](https://placehold.co/16/004784/004784) `#004784` |
| Bright Magenta | ![#d780bb](https://placehold.co/16/d780bb/d780bb) `#d780bb` | ![#7b2c66](https://placehold.co/16/7b2c66/7b2c66) `#7b2c66` |
| Bright Cyan    | ![#48b8be](https://placehold.co/16/48b8be/48b8be) `#48b8be` | ![#005d63](https://placehold.co/16/005d63/005d63) `#005d63` |
| Bright White   | ![#e8e0d0](https://placehold.co/16/e8e0d0/e8e0d0) `#e8e0d0` | ![#3a3024](https://placehold.co/16/3a3024/3a3024) `#3a3024` |

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
