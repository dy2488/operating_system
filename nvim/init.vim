call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
"Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'Yggdroot/indentLine'
Plug 'voldikss/vim-translator'
Plug 'kevinhwang91/rnvimr'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'uiiaoo/java-syntax.vim'
Plug 'vim-python/python-syntax'
Plug 'liuchengxu/vim-clap'
Plug 'glepnir/dashboard-nvim'

call plug#end()
"hi Constant ctermfg=Green
hi VertSplit ctermfg=DarkGray
hi LineNr ctermbg=black ctermfg=DarkGray
hi Title cterm=bold ctermfg=LightCyan
hi CursorLineNr   ctermfg=LightBlue 
hi CursorLine ctermbg=236 cterm=bold 
hi Identifier ctermfg=LightBlue
hi Number ctermfg =Yellow
hi String ctermfg =99 
hi Comment ctermfg=DarkGray 
hi Type ctermfg=LightGreen
hi PreProc ctermfg=LightGreen
hi Pmenu ctermfg=black ctermbg=green guibg=#444444
hi PmenuSel ctermfg=black ctermbg=LightYellow
hi Normal	ctermfg=LightGray cterm=bold
hi Statement ctermfg=213
hi signcolumn ctermbg=black 
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
highlight link javaIdentifier NONE
set nu
set relativenumber
set t_Co=256
set updatetime=100
set signcolumn=yes
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set incsearch
set softtabstop=4
set cursorline
set tabstop=4
set laststatus=2
set autowrite
set ttimeout
set ttimeoutlen=100
set scrolloff=15
filetype indent on
set autoindent 
set smartindent 
set noshowmode
syntax enable
filetype plugin on




"syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
"syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
""syn match cFuntions display "[a-zA-Z_][a-zA-Z_0-9]\{-1,}\s\{-0,}(\{1}"ms=s,me=e-1                                                   
"hi def link cFuntions Special
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunctions gui=NONE cterm=bold  ctermfg=blue


autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap ;z zf%
nmap [c <Plug>(GitGutterPrevHunk)
nmap ]c <Plug>(GitGutterNextHunk)
nmap <silent> <F9> :TagbarToggle<CR>
nmap <silent> <F3> :NERDTreeMirror<CR>
nmap <silent> <F3> :NERDTreeToggle<CR>
nmap <silent> <F2> :Files<CR> 
nmap <silent><leader>t :Translate<CR>
nmap <silent><leader>wr :TranslateW<CR>
nmap <silent>Q :q<CR>
nmap <silent>W :w<CR>
nmap <silent>X :x<CR>
nmap <silent>\t :CocCommand explorer<CR>

"光标之前连续的字母全部转为大写
inoremap <C-u> <esc>gUiwea 
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
"inoremap < <><ESC>i
inoremap { {<CR>}<ESC>o<ESC>kko
"syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
"syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
"hi cFunctions gui=NONE cterm=bold  ctermfg=yellow
let g:rainbow_active=1
let g:airline_theme="simple"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:tagbar_sort=0
let g:tagbar_right=1
let g:tagbar_width=30
let g:tagbar_autofocus=0
let NERDTreeHighlightCursorline=1 
let NERDTreeShowLineNumbers=1 
let g:NERDTreeWinSize=25
let g:python_highlight_all = 1

let g:dashboard_default_executive ='clap'
let g:clap_theme = 'material_design_dark'




let g:dashboard_custom_header=[
    \'',
    \' ⡿⠉⠄⠄⠄⠄⠈⠙⠿⠟⠛⠉⠉⠉⠄⠄⠄⠈⠉⠉⠉⠛⠛⠻⢿⣿⣿⣿⣿⣿ ',
    \' ⠁⠄⠄⠄⢀⡴⣋⣵⣮⠇⡀⠄⠄⠄⠄⠄⠄⢀⠄⠄⠄⡀⠄⠄⠄⠈⠛⠿⠋⠉ ',
    \' ⠄⠄⠄⢠⣯⣾⣿⡿⣳⡟⣰⣿⣠⣂⡀⢀⠄⢸⡄⠄⢀⣈⢆⣱⣤⡀⢄⠄⠄⠄ ',
    \' ⠄⠄⠄⣼⣿⣿⡟⣹⡿⣸⣿⢳⣿⣿⣿⣿⣴⣾⢻⣆⣿⣿⣯⢿⣿⣿⣷⣧⣀⣤ ',
    \' ⠄⠄⣼⡟⣿⠏⢀⣿⣇⣿⣏⣿⣿⣿⣿⣿⣿⣿⢸⡇⣿⣿⣿⣟⣿⣿⣿⣿⣏⠋ ',
    \' ⡆⣸⡟⣼⣯⠏⣾⣿⢸⣿⢸⣿⣿⣿⣿⣿⣿⡟⠸⠁⢹⡿⣿⣿⢻⣿⣿⣿⣿⠄ ',
    \' ⡇⡟⣸⢟⣫⡅⣶⢆⡶⡆⣿⣿⣿⣿⣿⢿⣛⠃⠰⠆⠈⠁⠈⠙⠈⠻⣿⢹⡏⠄ ',
    \' ⣧⣱⡷⣱⠿⠟⠛⠼⣇⠇⣿⣿⣿⣿⣿⣿⠃⣰⣿⣿⡆⠄⠄⠄⠄⠄⠉⠈⠄⠄ ',
    \' ⡏⡟⢑⠃⡠⠂⠄⠄⠈⣾⢻⣿⣿⡿⡹⡳⠋⠉⠁⠉⠙⠄⢀⠄⠄⠄⠄⠄⠂⠄ ',
    \' ⡇⠁⢈⢰⡇⠄⠄⡙⠂⣿⣿⣿⣿⣱⣿⡗⠄⠄⠄⢀⡀⠄⠈⢰⠄⠄⠄⠐⠄⠄ ',
    \' ⠄⠄⠘⣿⣧⠴⣄⣡⢄⣿⣿⣿⣷⣿⣿⡇⢀⠄⠤⠈⠁⣠⣠⣸⢠⠄⠄⠄⠄⠄ ',
    \' ⢀⠄⠄⣿⣿⣷⣬⣵⣿⣿⣿⣿⣿⣿⣿⣷⣟⢷⡶⢗⡰⣿⣿⠇⠘⠄⠄⠄⠄⠄ ',
    \' ⣿⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⡟⢀⠃⠄⢸⡄⠁⣸ ',
    \' ⣿⠄⠄⠘⢿⣿⣿⣿⣿⣿⣿⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢄⡆⠄⢀⣪⡆⠄⣿ ',
    \' ⡟⠄⠄⠄⠄⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣟⣻⣩⣾⣃⣴⣿⣿⡇⠸⢾ ',
    \'',
    \]



"highlight link RnvimrNormal CursorLine
" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Disable a border for floating window
"let g:rnvimr_draw_border = 0

" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1

" Add a shadow window, value is equal to 100 will disable shadow
let g:rnvimr_shadow_winblend = 70

" Draw border with both
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
highlight link RnvimrNormal CursorLine
nmap <silent><leader>r :RnvimrToggle<CR>

" Map Rnvimr action
let g:rnvimr_action = {
            \ 't': 'NvimEdit tabedit',
            \ 'x': 'NvimEdit split',
            \ 'v': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }

" Add views for Ranger to adapt the size of floating window
let g:rnvimr_ranger_views = [
            \ {'minwidth': 90, 'ratio': []},
            \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
            \ {'maxwidth': 49, 'ratio': [1]}
            \ ]

" Customize the initial layout
let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(0.7 * &columns)),
            \ 'height': float2nr(round(0.7 * &lines)),
            \ 'col': float2nr(round(0.15 * &columns)),
            \ 'row': float2nr(round(0.15 * &lines)),
            \ 'style': 'minimal'
            \ }

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
            \ {'width': 0.600, 'height': 0.600},
            \ {},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
            \ ]

" 设置状态栏
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
 "设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <leader>- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <leader>+ <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <silent><leader>q :bp<cr>:bd #<cr>


let g:mkdp_auto_start = 1

let g:mkdp_auto_close = 1

let g:mkdp_refresh_slow = 0

let g:mkdp_command_for_global = 0

let g:mkdp_open_to_the_world = 0

let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0

let g:mkdp_browserfunc = ''

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']






autocmd BufReadPost *.py,*.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

"let g:ale_linters = {
"\   'c++': ['clang'],
"\   'c': ['clang'],
"\   'python': ['pylint'],
"\}
autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh,*.java exec ":call SetTitle()"
func SetTitle()
	"如果文件类型为.sh文件
	if &filetype == 'sh'
		call setline(1, "###############################")
		call append(line("."), "# File Name: ".expand("%"))
		call append(line(".")+1, "# Author: dy2488")
		call append(line(".")+2, "# mail: 1439433776@qq.com")
		call append(line(".")+3, "# Created Time: ".strftime("%c"))
		call append(line(".")+4, "###############################")
		call append(line(".")+5, "#!/bin/bash")
	else
		call setline(1, "/********************")
		call append(line("."), "File Name: ".expand("%"))
		call append(line(".")+1, "Author: dy2488")
		call append(line(".")+2, "Mail: 1439433776@qq.com ")
		call append(line(".")+3, "Created Time: ".strftime("%c"))
		call append(line(".")+4, "********************/")
		call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6,"#include<bits/stdc++.h>")
		call append(line(".")+7,"using namespace std;")
	endif
	if &filetype == 'c'
		call append(line(".")+6,"#include<stdio.h>" )
		call append(line(".")+7,"#include<stdlib.h>")
		call append(line(".")+8,"#include<string.h>")
		call append(line(".")+9,"")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%:r"))
		call append(line(".")+7,"{")
		call append(line(".")+8,"}")

	endif
	"autocmd BufNewFile * normal G
endfunc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction



inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"








