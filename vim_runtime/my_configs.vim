" set fonts
if has("gui_running")
    "colorscheme desert
    highlight Cursor guifg=white guibg=steelblue
    highlight iCursor guifg=white guibg=steelblue
    set guifont=Monospace\ 11
endif

" line numbers
set number

" don't wrap search
set nowrapscan

" cmdheight
set cmdheight=1

" key mapping
nmap <silent> <C-l> :noh<CR>
nmap <silent> <C-k> :tabnext<CR>
nmap <silent> <C-j> :tabprev<CR>

" find in path
set path+=**

" relative numberlines
set relativenumber
set number
