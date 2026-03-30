# Ferric

A metallurgy-inspired dark theme for [Neovim](https://neovim.io) inspired by
the colors of the **Rust** programming language and the chemistry of iron
oxidation.

<details>
  <summary>📸 Click to View Screenshots</summary>
  <img width="3585" height="2140" alt="startscreen" src="https://github.com/user-attachments/assets/4d8e1298-e69e-4c9b-ae15-d83cc1aa9ad1" />
  <img width="3585" height="2140" alt="rust+md" src="https://github.com/user-attachments/assets/0cd96254-3234-4f26-8dcb-6d54f9f30bd4" />
  <img width="3585" height="2140" alt="lua" src="https://github.com/user-attachments/assets/de70dfb5-f343-438b-a794-fd6b290c03aa" />
  <img width="3585" height="2140" alt="rust+cmp" src="https://github.com/user-attachments/assets/0cf909a3-35d6-4d0b-ad0b-1d6953dae4ac" />
  <img width="3585" height="2140" alt="rust+md+diagnostic" src="https://github.com/user-attachments/assets/33a86948-cad7-4674-96ee-4b000fc2cda0" />
  <img width="3585" height="2140" alt="telescope+find+files" src="https://github.com/user-attachments/assets/cd51bc90-ef20-4ff4-8911-cf349619fd05" />
  <img width="3585" height="2140" alt="lazy+update" src="https://github.com/user-attachments/assets/1a9ca65c-381d-44e3-ad11-acf8c38ee525" />
</details>

## The Vision

**Ferric** draws from the **forge** — iron oxide, copper patina, heated metal,
and cobalt. The result is a theme that feels industrial, precise, and alive —
like staring into a blacksmith's workshop where every tool glows at a different
temperature.

The name comes from *ferric* (Fe³⁺) — iron in its oxidized state. Rust.

### Syntax

| Role        | Pigment     | Swatch                                             | Hex       |
| ----------- | ----------- | -------------------------------------------------- | --------- |
| Keywords    | Rust        | ![#cc5030](https://placehold.co/16/cc5030/cc5030)  | `#cc5030` |
| Functions   | Verdigris   | ![#5aaa88](https://placehold.co/16/5aaa88/5aaa88)  | `#5aaa88` |
| Strings     | Forge Amber | ![#c8a040](https://placehold.co/16/c8a040/c8a040)  | `#c8a040` |
| Types       | Copper      | ![#c08050](https://placehold.co/16/c08050/c08050)  | `#c08050` |
| Constants   | Ember       | ![#a86848](https://placehold.co/16/a86848/a86848)  | `#a86848` |
| Numbers     | Cobalt      | ![#6a88b0](https://placehold.co/16/6a88b0/6a88b0)  | `#6a88b0` |
| Preprocessor| Patina      | ![#5a9890](https://placehold.co/16/5a9890/5a9890)  | `#5a9890` |
| Properties  | Tarnish     | ![#908070](https://placehold.co/16/908070/908070)  | `#908070` |
| Operators   | Cast Iron   | ![#607068](https://placehold.co/16/607068/607068)  | `#607068` |
| Comments    | Slag        | ![#565050](https://placehold.co/16/565050/565050)  | `#565050` |
| Text        | Limestone   | ![#d0c8b8](https://placehold.co/16/d0c8b8/d0c8b8)  | `#d0c8b8` |

### UI Surfaces

| Role             | Pigment       | Swatch                                              | Hex       |
| ---------------- | ------------- | --------------------------------------------------- | --------- |
| Background       | Void          | ![#000000](https://placehold.co/16/000000/000000)   | `#000000` |
| Tab bar          | Forge         | ![#0c0808](https://placehold.co/16/0c0808/0c0808)   | `#0c0808` |
| Floats / popups  | Quench Dark   | ![#121a18](https://placehold.co/16/121a18/121a18)   | `#121a18` |
| Float borders    | Quench Edge   | ![#222a28](https://placehold.co/16/222a28/222a28)   | `#222a28` |
| Scrollbar        | Quench Mid    | ![#1a2824](https://placehold.co/16/1a2824/1a2824)   | `#1a2824` |
| Selection (menu) | Quench Bright | ![#1e3830](https://placehold.co/16/1e3830/1e3830)   | `#1e3830` |
| Color column     | Smelt         | ![#282220](https://placehold.co/16/282220/282220)   | `#282220` |
| Cursor line      | Crucible      | ![#142420](https://placehold.co/16/142420/142420)   | `#142420` |
| Visual selection | Alloy         | ![#3c2a1e](https://placehold.co/16/3c2a1e/3c2a1e)   | `#3c2a1e` |
| Line numbers     | Mill Scale    | ![#3e3430](https://placehold.co/16/3e3430/3e3430)   | `#3e3430` |
| Muted text       | Muted         | ![#706860](https://placehold.co/16/706860/706860)   | `#706860` |
| Ghost text       | Special       | ![#484040](https://placehold.co/16/484040/484040)   | `#484040` |

### Diagnostics

| Role    | Pigment   | Swatch                                             | Hex       |
| ------- | --------- | -------------------------------------------------- | --------- |
| Error   | Rust      | ![#cc5030](https://placehold.co/16/cc5030/cc5030)  | `#cc5030` |
| Warning | Forge Amber | ![#c8a040](https://placehold.co/16/c8a040/c8a040) | `#c8a040` |
| Info    | Cobalt    | ![#6a88b0](https://placehold.co/16/6a88b0/6a88b0)  | `#6a88b0` |
| Hint    | Patina    | ![#5a9890](https://placehold.co/16/5a9890/5a9890)  | `#5a9890` |
| Ok      | Verdigris | ![#5aaa88](https://placehold.co/16/5aaa88/5aaa88)  | `#5aaa88` |

### Git / Diff

| Role         | Pigment     | Swatch                                             | Hex       |
| ------------ | ----------- | -------------------------------------------------- | --------- |
| Added        | Verdigris   | ![#5aaa88](https://placehold.co/16/5aaa88/5aaa88)  | `#5aaa88` |
| Changed      | Forge Amber | ![#c8a040](https://placehold.co/16/c8a040/c8a040)  | `#c8a040` |
| Deleted      | Brick       | ![#c44838](https://placehold.co/16/c44838/c44838)  | `#c44838` |
| Diff add bg  | Quench      | ![#204838](https://placehold.co/16/204838/204838)  | `#204838` |
| Diff change bg | Temper    | ![#1a3838](https://placehold.co/16/1a3838/1a3838)  | `#1a3838` |
| Diff delete bg | Scale     | ![#5a2020](https://placehold.co/16/5a2020/5a2020)  | `#5a2020` |

### Terminal

| Role           | Pigment          | Swatch                                             | Hex       |
| -------------- | ---------------- | -------------------------------------------------- | --------- |
| Black          | Void             | ![#000000](https://placehold.co/16/000000/000000)  | `#000000` |
| Red            | Brick            | ![#c44838](https://placehold.co/16/c44838/c44838)  | `#c44838` |
| Green          | Verdigris        | ![#5aaa88](https://placehold.co/16/5aaa88/5aaa88)  | `#5aaa88` |
| Yellow         | Forge Amber      | ![#c8a040](https://placehold.co/16/c8a040/c8a040)  | `#c8a040` |
| Blue           | Cobalt           | ![#6a88b0](https://placehold.co/16/6a88b0/6a88b0)  | `#6a88b0` |
| Magenta        | Oxidized         | ![#a06888](https://placehold.co/16/a06888/a06888)  | `#a06888` |
| Cyan           | Patina           | ![#5a9890](https://placehold.co/16/5a9890/5a9890)  | `#5a9890` |
| White          | Limestone        | ![#d0c8b8](https://placehold.co/16/d0c8b8/d0c8b8)  | `#d0c8b8` |
| Bright Black   | Slag             | ![#565050](https://placehold.co/16/565050/565050)  | `#565050` |
| Bright Red     | Bright Rust      | ![#d87068](https://placehold.co/16/d87068/d87068)  | `#d87068` |
| Bright Green   | Bright Verdigris | ![#80c8a8](https://placehold.co/16/80c8a8/80c8a8)  | `#80c8a8` |
| Bright Yellow  | Bright Amber     | ![#d8b860](https://placehold.co/16/d8b860/d8b860)  | `#d8b860` |
| Bright Blue    | Bright Cobalt    | ![#8aa8c8](https://placehold.co/16/8aa8c8/8aa8c8)  | `#8aa8c8` |
| Bright Magenta | Bright Ember     | ![#b888a0](https://placehold.co/16/b888a0/b888a0)  | `#b888a0` |
| Bright Cyan    | Bright Patina    | ![#80b8b0](https://placehold.co/16/80b8b0/80b8b0)  | `#80b8b0` |
| Bright White   | Bright Limestone | ![#e8e0d0](https://placehold.co/16/e8e0d0/e8e0d0)  | `#e8e0d0` |

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

Pair with **[Comic Code](https://tosche.net/fonts/comic-code)** monospaced font
for the full aesthetic or one of the free alternatives:

- [Comic Mono](https://github.com/dtinth/comic-mono-font)
- [Serious Shanns](https://github.com/kaBeech/serious-shanns)

## License

[MIT](LICENSE)
