" Wrapping and tabs.
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=black
match WhitespaceEOL /\s\+$/

highlight clear SpellBad
highlight SpellBad cterm=bold,reverse

" Leader keys
map <leader>p Oimport pdb; pdb.set_trace()<Esc>
map <leader>p oimport pdb; pdb.set_trace()<Esc>

" Taglist variables
map <F8> :TlistToggle<cr>
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
" Display function name in status bar:
let g:ctags_statusline=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Automatically start script
let generate_tags=1
"let Tlist_Use_Right_Window = 1