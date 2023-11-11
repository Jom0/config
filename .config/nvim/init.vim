call plug#begin()

let maplocalleader="\<Space>" 

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = ["my_snippets"]

Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()

set number
lua << EOF
require('catppuccin').load()
require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
})
EOF
