" Name: Solarized Flood
" Changed: July 15 2018, UTC+8
" Maintainer: https://github.com/Neur1n
" Description:
"   A lightline theme made based on and tested with the Solarized colorscheme
"   (https://github.com/frankier/neovim-colors-solarized-truecolor-only)
"   in Windows 10 OS and GVim 8.1.
"
"   It is call "flood" since the statusline and the tabline will be highlighted
"   with the "base03" color in Solarized (dark). If you use the dark Solarized
"   colorscheme for Vim and, in Windows, set "Personalization-Colors-Choose
"   your color - Custom color" to be "#002B36" (*), then most parts of the GVim
"   window will be "flooded" with the color.
"   NOTE: This will make some components of the airline less distinguishable
"         from the others. If anyone has better ideas, I will be happy to take
"         a conversation with you. :)

"   (*): Your PC may not support the exact color but it will pick the nearest
"        color for you and it should work fine.


scriptencoding utf-8

" The following color definitions:
"   "hex":  originated from official solarized (dark) colors
"   "term": calculated by 'x256' package of Python
"   "*":    "term" value that is different with solarized official definition
"   "#":    picked manually
let s:base03  = {'hex': '#002b36', 'term': 234}  "   0,  43,  54
let s:base02  = {'hex': '#073642', 'term': 235}  "   7,  54,  66
let s:base01  = {'hex': '#586e75', 'term': 242}  "  88, 110, 117 *
let s:base00  = {'hex': '#657b83', 'term':  66}  " 101, 123, 131 *

let s:base0   = {'hex': '#839496', 'term': 246}  " 131, 148, 150 *
let s:base1   = {'hex': '#93a1a1', 'term': 247}  " 147, 161, 161 *
let s:base2   = {'hex': '#eee8d5', 'term': 254}  " 238, 232, 213
let s:base3   = {'hex': '#fdf6e3', 'term': 230}  " 253, 246, 227

let s:yellow  = {'hex': '#b58900', 'term': 136}  " 181, 137,   0
let s:orange  = {'hex': '#cb4b16', 'term': 166}  " 203,  75,  22
let s:red     = {'hex': '#dc322f', 'term': 160}  " 220,  50,  47 *
let s:magenta = {'hex': '#d33682', 'term': 168}  " 211,  54, 130 *
let s:violet  = {'hex': '#6c71c4', 'term':  62}  " 108, 113, 196 *
let s:blue    = {'hex': '#268bd2', 'term':  32}  "  38, 139, 210 *
let s:cyan    = {'hex': '#2aa198', 'term':  36}  "  42, 161, 152 *
let s:green   = {'hex': '#859900', 'term': 106}  " 133, 153,   0 #


let s:style = get(g:, 'solarized_flood_nv_mode_style', 'NONE')

let s:p = {'normal': {}, 'insert': {}, 'replace': {}, 'visual': {},
         \ 'inactive': {}, 'tabline': {}}

" *****************************************************************************
"                                                                   Normal Mode
" *****************************************************************************
let s:p.normal.left = [
    \ [s:base03['hex'], s:green['hex'], s:base03['term'], s:green['term'],
    \  s:style],
    \ [s:base1['hex'], s:base03['hex'], s:base1['term'], s:base03['term'],
    \  s:style],
    \ [s:cyan['hex'], s:base03['hex'], s:cyan['term'], s:base03['term'],
    \  s:style],
    \ [s:red['hex'], s:base03['hex'], s:red['term'], s:base03['term'],
    \  s:style]
\ ]

let s:p.normal.middle = [
    \ [s:base00['hex'], s:base03['hex'], s:base00['term'], s:base03['term'],
    \  s:style],
\ ]

let s:p.normal.right = [
    \ [s:green['hex'],  s:base03['hex'], s:green['term'], s:base03['term'],
    \  s:style],
    \ [s:green['hex'],  s:base03['hex'], s:green['term'], s:base03['term'],
    \  s:style]
\ ]

" *****************************************************************************
"                                                                   Insert Mode
" *****************************************************************************
let s:p.insert.left = [
    \ [s:base03['hex'], s:cyan['hex'], s:base03['term'], s:cyan['term'],
    \  'bold'],
    \ [s:base1['hex'], s:base03['hex'], s:base1['term'], s:base03['term'],
    \  'bold'],
    \ [s:blue['hex'], s:base03['hex'], s:blue['term'], s:base03['term'],
    \  'bold'],
    \ [s:red['hex'], s:base03['hex'], s:red['term'], s:base03['term'],
    \  'bold']
\ ]

let s:p.insert.middle = s:p.normal.middle

let s:p.insert.right = [
    \ [s:cyan['hex'],  s:base03['hex'], s:cyan['term'], s:base03['term'],
    \  'bold'],
    \ [s:cyan['hex'],  s:base03['hex'], s:cyan['term'], s:base03['term'],
    \  'bold']
\ ]

" *****************************************************************************
"                                                                   Visual Mode
" *****************************************************************************
let s:p.visual.left = [
    \ [s:base03['hex'], s:yellow['hex'], s:base03['term'], s:yellow['term'],
    \  s:style],
    \ [s:base1['hex'], s:base03['hex'], s:base1['term'], s:base03['term'],
    \  s:style],
    \ [s:orange['hex'], s:base03['hex'], s:orange['term'], s:base03['term'],
    \  s:style],
    \ [s:red['hex'], s:base03['hex'], s:red['term'], s:base03['term'],
    \  s:style]
\ ]

let s:p.visual.middle = s:p.normal.middle

let s:p.visual.right = [
    \ [s:yellow['hex'],  s:base03['hex'], s:yellow['term'], s:base03['term'],
    \  s:style],
    \ [s:yellow['hex'],  s:base03['hex'], s:yellow['term'], s:base03['term'],
    \  s:style]
\ ]

" *****************************************************************************
"                                                                  Replace Mode
" *****************************************************************************
let s:p.replace.left = [
    \ [s:base03['hex'], s:violet['hex'], s:base03['term'], s:violet['term'],
    \  'bold'],
    \ [s:base1['hex'], s:base03['hex'], s:base1['term'], s:base03['term'],
    \  'bold'],
    \ [s:magenta['hex'], s:base03['hex'], s:magenta['term'], s:base03['term'],
    \  'bold'],
    \ [s:red['hex'], s:base03['hex'], s:red['term'], s:base03['term'],
    \  'bold']
\ ]

let s:p.replace.middle = s:p.normal.middle

let s:p.replace.right = [
    \ [s:violet['hex'],  s:base03['hex'], s:violet['term'], s:base03['term'],
    \  'bold'],
    \ [s:violet['hex'],  s:base03['hex'], s:violet['term'], s:base03['term'],
    \  'bold']
\ ]

" *****************************************************************************
"                                                                 Inactive Mode
" *****************************************************************************
let s:p.inactive.left = [
    \ ['#4e4e4e', '#303030', 239, 236, 'bold'],
\ ]

let s:p.inactive.middle = [
    \ ['#4e4e4e', '#262626', 239, 235, 'bold'],
\ ]

let s:p.inactive.right = [
    \ ['#4e4e4e', '#1c1c1c', 239, 234, 'bold'],
\ ]

" *****************************************************************************
"                                                                Linter Section
" *****************************************************************************
let s:p.normal.warning = [
    \ [s:yellow['hex'], s:base03['hex'], s:yellow['term'], s:base03['term'],
    \  'bold']
\ ]

let s:p.normal.error = [
    \ [s:orange['hex'], s:base03['hex'], s:orange['term'], s:base03['term'],
    \  'bold']
\ ]


let g:lightline#colorscheme#solarized_flood#palette = s:p

" *****************************************************************************
"                                                                       Tabline
" *****************************************************************************
let s:p.tabline.tabsel = [
    \ [s:base03['hex'],  s:green['hex'], s:base03['term'], s:green['term'],
    \  'bold'],
\ ]

let s:p.tabline.left = [
    \ [s:base2['hex'],  s:base03['hex'], s:base2['term'], s:base03['term'],
    \  'bold'],
\ ]

let s:p.tabline.middle = [
    \ [s:red['hex'],  s:base03['hex'], s:red['term'], s:base03['term'],
    \  'bold'],
\ ]

let s:p.tabline.right = [
    \ [s:yellow['hex'],  s:base03['hex'], s:yellow['term'], s:base03['term'],
    \  'bold'],
\ ]
