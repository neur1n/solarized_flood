# solarized_flood
A colorscheme for vim-airline/lightline. Lets make the solarized flood fill your editor.

## Table of Contents

- [Screenshots](#screenshots)
- [Installation](#installation)
- [Configuration](#configuration)
- [License](#license)

## Screenshots

The following screenshots are from vim-airline. The colorscheme for lightline is not as fancy as that in vim-airline since API is different. 

### Overall
![screenshot](./screenshots/overall.png)

### Statuslines (default style)
![screenshot](./screenshots/modes_no_dam.png)

### Statuslines (alternative style)
![screenshot](./screenshots/modes_dam.png)

### Readonly Indicator Accents
![screenshot](./screenshots/readonly_accents.png)

## Installation

This repo contains a theme/colorscheme for both [vim-airline](https://github.com/vim-airline/vim-airline) and [lightline](https://github.com/itchyny/lightline.vim). To install (with [vim-plug](https://github.com/junegunn/vim-plug)):

```vim
Plug 'Neur1n/solarized_flood'
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
