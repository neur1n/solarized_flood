# solarized_flood
A colorscheme for vim-airline/lightline. Lets make the solarized flood fill your Vim.

### Overall
![screenshot](./screenshots/overall.png)

### Statuslines (default style)
![screenshot](./screenshots/modes_no_dam.png)

### Statuslines (alternative style)
![screenshot](./screenshots/modes_dam.png)

## Table Of Contents

- [Installation](#installation)
- [Configuration](#configuration)
- [License](#license)

## Installation

The following example is based on [vim-plug](https://github.com/junegunn/vim-plug).

The `master` branch is for [vim-airline](https://github.com/vim-airline/vim-airline).

```vim
Plug 'Neur1n/solarized_flood'
```

To install this colorscheme for [lightline](https://github.com/itchyny/lightline.vim),
one may use:

```vim
Plug 'Neur1n/solarized_flood', {'branch': 'lightline'}
```

## Configuration

##### `g:solarized_flood_nv_mode_style`
An option to customize the font style of seciton c when in normal and visual
mode, since the 'italic' style sometimes causes glitches on the statusline.
The default is:

```vim
let g:solarized_flood_nv_mode_style = 'NONE'
```

More styles can be found with ':help attr-list'.

##### `g:solarized_flood_dam` (currently only available in vim-airline)
Now lets bulid a dam to stop the flood! The default highlighting for 'modified'
mode could be inconspicuous that one should actually move an eye on the
statusline to tell if a buffer is modified. Enabling the 'dam' will inverse the
highlighting and the whole section c will be highlighted which makes it more
obivous after a buffer is modified. To enable it:

```vim
let g:solarized_flood_dam = 1 (default: 0)
```

## License

[MIT License](LICENSE). Copyright (c) 2018 Jihang Li.
