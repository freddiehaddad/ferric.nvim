# Ferric

Ferric is a family of metallurgy-inspired colorschemes for
[Neovim](https://neovim.io). Each family has independently designed dark and
light variants selected through `vim.o.background`.

## Themes

| Colorscheme | Character |
| --- | --- |
| `ferric-steel` | Cool blued-steel surfaces with warm rust syntax |
| `ferric-graphite` | Neutral foundry surfaces with restrained metallurgy accents |
| `ferric-forge` | Warm iron, rust, leather, brass, and limestone |

There is no generic `ferric` entry point; one of these three families must be
selected explicitly.

```vim
:set background=dark
:colorscheme ferric-steel
```

```vim
:set background=light
:colorscheme ferric-forge
```

## Semantic model

Every family uses the same visual grammar:

- Rust and terracotta for keywords
- Tempered steel blue for functions and methods
- Patina teal for types and constructors
- Verdigris green for strings and regular expressions
- Brass for constants and numbers
- Normal foreground for ordinary variables and properties
- Separate subdued roles for comments, imports, modules, and line numbers
- Red reserved for errors, breakpoints, and deletion

Definitions and calls share a color. Treesitter and LSP semantic tokens refine
classification without replacing the theme's visual hierarchy.

## Forge Workshop

| Role | Dark | Light |
| --- | --- | --- |
| Background | ![#100d0b](https://placehold.co/16x16/100d0b/100d0b.png) `#100d0b` | ![#f7f1e7](https://placehold.co/16x16/f7f1e7/f7f1e7.png) `#f7f1e7` |
| Chrome | ![#0b0908](https://placehold.co/16x16/0b0908/0b0908.png) `#0b0908` | ![#eee6da](https://placehold.co/16x16/eee6da/eee6da.png) `#eee6da` |
| Float | ![#1a1512](https://placehold.co/16x16/1a1512/1a1512.png) `#1a1512` | ![#f1e9de](https://placehold.co/16x16/f1e9de/f1e9de.png) `#f1e9de` |
| Selection | ![#33251d](https://placehold.co/16x16/33251d/33251d.png) `#33251d` | ![#e4d3c4](https://placehold.co/16x16/e4d3c4/e4d3c4.png) `#e4d3c4` |
| Text | ![#d4ccc0](https://placehold.co/16x16/d4ccc0/d4ccc0.png) `#d4ccc0` | ![#28231e](https://placehold.co/16x16/28231e/28231e.png) `#28231e` |
| Comment | ![#756c63](https://placehold.co/16x16/756c63/756c63.png) `#756c63` | ![#877d72](https://placehold.co/16x16/877d72/877d72.png) `#877d72` |
| Keyword | ![#c47c57](https://placehold.co/16x16/c47c57/c47c57.png) `#c47c57` | ![#8a4a2f](https://placehold.co/16x16/8a4a2f/8a4a2f.png) `#8a4a2f` |
| Function | ![#7096b3](https://placehold.co/16x16/7096b3/7096b3.png) `#7096b3` | ![#3b607c](https://placehold.co/16x16/3b607c/3b607c.png) `#3b607c` |
| Type | ![#5b9a94](https://placehold.co/16x16/5b9a94/5b9a94.png) `#5b9a94` | ![#2f6a66](https://placehold.co/16x16/2f6a66/2f6a66.png) `#2f6a66` |
| String | ![#7e9d69](https://placehold.co/16x16/7e9d69/7e9d69.png) `#7e9d69` | ![#49673c](https://placehold.co/16x16/49673c/49673c.png) `#49673c` |
| Constant / number | ![#b89a5d](https://placehold.co/16x16/b89a5d/b89a5d.png) `#b89a5d` | ![#755b25](https://placehold.co/16x16/755b25/755b25.png) `#755b25` |
| UI accent | ![#c08b57](https://placehold.co/16x16/c08b57/c08b57.png) `#c08b57` | ![#8a5a2c](https://placehold.co/16x16/8a5a2c/8a5a2c.png) `#8a5a2c` |

## Tempered Steel

| Role | Dark | Light |
| --- | --- | --- |
| Background | ![#11151a](https://placehold.co/16x16/11151a/11151a.png) `#11151a` | ![#f2f5f6](https://placehold.co/16x16/f2f5f6/f2f5f6.png) `#f2f5f6` |
| Chrome | ![#0b0f13](https://placehold.co/16x16/0b0f13/0b0f13.png) `#0b0f13` | ![#e8edef](https://placehold.co/16x16/e8edef/e8edef.png) `#e8edef` |
| Float | ![#192028](https://placehold.co/16x16/192028/192028.png) `#192028` | ![#eaf0f2](https://placehold.co/16x16/eaf0f2/eaf0f2.png) `#eaf0f2` |
| Selection | ![#273542](https://placehold.co/16x16/273542/273542.png) `#273542` | ![#d5e0e6](https://placehold.co/16x16/d5e0e6/d5e0e6.png) `#d5e0e6` |
| Text | ![#d5dde2](https://placehold.co/16x16/d5dde2/d5dde2.png) `#d5dde2` | ![#232a2e](https://placehold.co/16x16/232a2e/232a2e.png) `#232a2e` |
| Comment | ![#76828a](https://placehold.co/16x16/76828a/76828a.png) `#76828a` | ![#737b80](https://placehold.co/16x16/737b80/737b80.png) `#737b80` |
| Keyword | ![#c77e5d](https://placehold.co/16x16/c77e5d/c77e5d.png) `#c77e5d` | ![#8a4f35](https://placehold.co/16x16/8a4f35/8a4f35.png) `#8a4f35` |
| Function | ![#87a8c2](https://placehold.co/16x16/87a8c2/87a8c2.png) `#87a8c2` | ![#3b627e](https://placehold.co/16x16/3b627e/3b627e.png) `#3b627e` |
| Type | ![#66a19b](https://placehold.co/16x16/66a19b/66a19b.png) `#66a19b` | ![#326d68](https://placehold.co/16x16/326d68/326d68.png) `#326d68` |
| String | ![#88a672](https://placehold.co/16x16/88a672/88a672.png) `#88a672` | ![#496c3d](https://placehold.co/16x16/496c3d/496c3d.png) `#496c3d` |
| Constant / number | ![#c0a063](https://placehold.co/16x16/c0a063/c0a063.png) `#c0a063` | ![#765d2d](https://placehold.co/16x16/765d2d/765d2d.png) `#765d2d` |
| UI accent | ![#6f9fc4](https://placehold.co/16x16/6f9fc4/6f9fc4.png) `#6f9fc4` | ![#386887](https://placehold.co/16x16/386887/386887.png) `#386887` |

## Foundry Graphite

| Role | Dark | Light |
| --- | --- | --- |
| Background | ![#121212](https://placehold.co/16x16/121212/121212.png) `#121212` | ![#f4f3ef](https://placehold.co/16x16/f4f3ef/f4f3ef.png) `#f4f3ef` |
| Chrome | ![#0b0b0b](https://placehold.co/16x16/0b0b0b/0b0b0b.png) `#0b0b0b` | ![#eae9e5](https://placehold.co/16x16/eae9e5/eae9e5.png) `#eae9e5` |
| Float | ![#1b1c1d](https://placehold.co/16x16/1b1c1d/1b1c1d.png) `#1b1c1d` | ![#efefec](https://placehold.co/16x16/efefec/efefec.png) `#efefec` |
| Selection | ![#2d3033](https://placehold.co/16x16/2d3033/2d3033.png) `#2d3033` | ![#d8d9da](https://placehold.co/16x16/d8d9da/d8d9da.png) `#d8d9da` |
| Text | ![#d2d1cd](https://placehold.co/16x16/d2d1cd/d2d1cd.png) `#d2d1cd` | ![#292a29](https://placehold.co/16x16/292a29/292a29.png) `#292a29` |
| Comment | ![#74736f](https://placehold.co/16x16/74736f/74736f.png) `#74736f` | ![#82817d](https://placehold.co/16x16/82817d/82817d.png) `#82817d` |
| Keyword | ![#b77a50](https://placehold.co/16x16/b77a50/b77a50.png) `#b77a50` | ![#8a4e2f](https://placehold.co/16x16/8a4e2f/8a4e2f.png) `#8a4e2f` |
| Function | ![#7494ad](https://placehold.co/16x16/7494ad/7494ad.png) `#7494ad` | ![#3f6078](https://placehold.co/16x16/3f6078/3f6078.png) `#3f6078` |
| Type | ![#63928e](https://placehold.co/16x16/63928e/63928e.png) `#63928e` | ![#396b67](https://placehold.co/16x16/396b67/396b67.png) `#396b67` |
| String | ![#7f986d](https://placehold.co/16x16/7f986d/7f986d.png) `#7f986d` | ![#52693f](https://placehold.co/16x16/52693f/52693f.png) `#52693f` |
| Constant / number | ![#ad915e](https://placehold.co/16x16/ad915e/ad915e.png) `#ad915e` | ![#745b2e](https://placehold.co/16x16/745b2e/745b2e.png) `#745b2e` |
| UI accent | ![#b77a50](https://placehold.co/16x16/b77a50/b77a50.png) `#b77a50` | ![#8a4e2f](https://placehold.co/16x16/8a4e2f/8a4e2f.png) `#8a4e2f` |

## Installation

### lazy.nvim

```lua
{
  "freddiehaddad/ferric.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("ferric-steel")
  end,
}
```

### vim.pack

```lua
vim.pack.add({ "https://github.com/freddiehaddad/ferric.nvim" })
vim.cmd.colorscheme("ferric-steel")
```

## Configuration

Configuration is shared by all Ferric families:

```lua
require("ferric").setup({
  terminal_colors = true,
  palette_overrides = {},
  overrides = {},
})
```

Palette overrides apply to the active family and background:

```lua
require("ferric").setup({
  palette_overrides = {
    ui_accent = "#6f9fc4",
  },
  overrides = {
    CursorLineNr = { italic = true },
  },
})
```

## Switching variants

```lua
vim.o.background = "light" -- or "dark"
vim.cmd.colorscheme("ferric-graphite")
```

To reload the active Ferric family when `background` changes:

```lua
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = function()
    local name = vim.g.colors_name
    if name and name:match("^ferric") then
      vim.cmd.colorscheme(name)
    end
  end,
})
```

## Integrations

All families include consistent highlights for:

- blink.cmp
- fzf-lua
- Gitsigns
- mini.statusline and mini.starter
- nvim-dap
- render-markdown.nvim
- Telescope

Integration highlights follow their UI purpose rather than selecting arbitrary
palette colors:

- Completion and picker matches use the UI accent; metadata remains muted.
- Completion kinds link through semantic LSP kinds.
- Picker prompts, carets, titles, selections, and scrollbars share equivalent
  roles across fzf-lua and Telescope.
- Mini statusline modes use normal, success, type, error, warning, and info
  roles respectively.
- Markdown headings form a six-level hierarchy; code, links, quotes, checkboxes,
  callouts, and inline highlights use separate semantic roles.
- Gitsigns signs link to core Git groups, while preview and inline-diff groups
  use the matching diff/state roles.
- DAP breakpoint and stopped-state groups link to diagnostics; the active frame
  uses the core `debugPC` surface.
