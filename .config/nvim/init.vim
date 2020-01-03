call plug#begin('~/.config/nvim/plugged')
Plug 'lervag/vimtex'
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal', { 'branch': 'develop' }
Plug 'machakann/vim-sandwich'
Plug 'romainl/vim-cool'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'


" Plug 'rstacruz/vim-closer'
Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-commentary'

Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'

" Colorschemes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'vitalk/vim-shebang'
Plug 'dag/vim-fish'
Plug 'dixonary/vimty'
Plug 'mattn/emmet-vim'
Plug 'udalov/kotlin-vim'

Plug 'davidhalter/jedi-vim'
Plug 'alcesleo/vim-uppercase-sql'

Plug 'chriskempson/base16-vim'
" Plug 'nfd/disorganiser'
" Plug 'SirVer/ultisnips'

Plug 'jreybert/vimagit'
" Plug 'christoomey/vim-titlecase'
Plug 'kovisoft/slimv'

Plug 'honza/vim-snippets'
Plug 'JuliaLang/julia-vim'
Plug 'kassio/neoterm'

" Plug 'ycm-core/YouCompleteMe'

Plug 'stevearc/vim-arduino'
Plug 'hoelzro/elm-vim'

Plug 'tpope/vim-fireplace'
call plug#end()


let mapleader = ' '

set noshowmatch
set number
set inccommand=nosplit

set softtabstop=4
set shiftwidth=4
set noexpandtab

set autoread
set gdefault
set ignorecase

set noshowmode
set splitright

" Nerd tree
map <C-n> :NERDTreeToggle<CR>

let g:tex_flavor='latex'
" let g:vimtex_view_method='mupdf'
let g:vimtex_view_method='zathura'
let g:vimtex_view_general_viewer='evince'
set conceallevel=1
let g:tex_conceal='abdmg'

let g:vimtex_compiler_latexmk = {
	    \ 'backend' : 'nvim',
	    \ 'background' : 1,
	    \ 'build_dir' : '',
	    \ 'callback' : 1,
	    \ 'continuous' : 1,
	    \ 'executable' : 'latexmk',
	    \ 'options' : [
	    \   '-pdf',
	    \   '-verbose',
	    \   '-file-line-error',
	    \   '-synctex=1',
	    \   '-interaction=nonstopmode',
	    \ ],
	    \}


" Convenient key binding
nnoremap <Leader>ev :tabe ~/.config/nvim/init.vim<cr>
nnoremap <Leader>sv :source ~/.config/nvim/init.vim<cr>

" Git
" nnoremap <Leader>gs :Gstatus<cr>
" nnoremap <Leader>gw :Gwrite<cr>
" nnoremap <Leader>gc :Gcommit<cr>
" nnoremap <Leader>gb :Merginal<cr>



" Latex settings
" autocmd FileType tex set textwidth=80
autocmd FileType tex,md,vimwiki setlocal linebreak
autocmd FileType tex,md,vimwiki setlocal wrap
autocmd FileType tex,md setlocal spell

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" autocmd FileType tex set formatlistpat=^\\s*\\\\\\(end\\\\|item\\)\\>
" autocmd FileType tex set formatoptions+=n

" Snippets
inoremap <C-j> <Esc>/<++><Enter>"_c4l
vnoremap <C-j> <Esc>/<++><Enter>"_c4l
map <C-j> <Esc>/<++><Enter>"_c4l

autocmd FileType c inoremap <buffer> pl printf("\n"<++>);<++><Esc>T(a
autocmd FileType java inoremap <buffer> pl System.out.println();<++><Esc>T(i

autocmd FileType tex inoremap <buffer> ;m \(\)<++><Esc>F\i
autocmd FileType tex inoremap <buffer> ;M \[<Enter><Enter>\]<Enter><++><Esc>kki
autocmd FileType tex inoremap <buffer> ;e \emph{}<++><Esc>T{i
autocmd FileType tex inoremap <buffer> ;fr \frac{}{<++>}<++><Esc>T{;i
autocmd FileType tex inoremap <buffer> {{ {}<++><Esc>T{i
autocmd FileType tex inoremap <buffer> '' ``''<++><Esc>T`i
autocmd FileType tex inoremap <buffer> >> \geq
autocmd FileType tex inoremap <buffer> << \leq
autocmd FileType tex inoremap <buffer> __ _{}<++><Esc>F}i

autocmd FileType tex inoremap <buffer> ;ff \begin{frame}{}<cr><++><cr>\end{frame}<cr><++><Esc>?{}<cr>a

autocmd FileType tex,md,vimwiki nnoremap <buffer> k gk
autocmd FileType tex,md,vimwiki nnoremap <buffer> j gj
autocmd FileType tex,md,vimwiki nnoremap <buffer> $ g$
autocmd FileType tex,md,vimwiki nnoremap <buffer> 0 g0



map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" colorscheme  OceanicNext
" colorscheme  nord
" set colorcolumn=81

let base16colorspace=256 
" colorscheme base16-monokai
source /home/kristian/.config/nvim/colorscheme.vim

" Calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1


" Vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
		     \ 'syntax': 'markdown', 'ext': '.md'}]

" Goyo
" nnoremap <Leader>g :Goyo<CR>
"
" Limelight
" let g:limelight_conceal_ctermtg = 'gray'
let g:limelight_conceal_ctermfg = 240
" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!

function! OpenThesis()
    cd /home/kristian/master/thesis
    edit thesis.tex
    VimtexCompile 
    tabedit bibliography.bib
    tabedit style.sty
endfunction


command! Thesis call OpenThesis()
command! Date r!date +"\%Y-\%m-\%d"

command! CountFrames %w !grep "^\\\begin{frame}" | wc -l

" command! Display :execute "!feh " . expand("<cfile>")
command! Display  :execute "silent !feh " . split(getline('.'), ',')[0]

nnoremap <Leader>o :Display<cr>

nnoremap S :%s//<Left>
vnoremap S :s//<Left>

nnoremap <C-m> :w<CR>:make<CR>


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


let maplocalleader = "-"

""" neoterm
let g:neoterm_default_mod = ':vertical'
autocmd BufWinEnter,WinEnter term:://* startinsert
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-k> <C-\><C-n><C-w>k

" -- commands and send (shortcuts partly based on Nvim-R - quick and dirty)
" - *t*erminal (julia only starts with the first send command)
nnoremap <silent> <localleader>tn :Tnew<cr>
nnoremap <silent> <localleader>to :Topen<cr>
nnoremap <silent> <localleader>tc :Tclose<cr>
" - *c*lear, *c*trl-c, workspace *c*ommand
nnoremap <silent> <localleader>cl :call neoterm#clear()<cr>
nnoremap <silent> <localleader>cc :call neoterm#kill()<cr>
nnoremap <silent> <localleader>cw :call neoterm#do("workspace()")<cr>
" - show *j*ulia @doc, show(info)
nnoremap <silent> <localleader>jd :call neoterm#do("@doc " . expand("<cword>"))<cr>
nnoremap <silent> <localleader>je :call neoterm#do("@edit " . expand("<cword>"))<cr>
nnoremap <silent> <localleader>ji :call neoterm#do(expand("<cword>"))<cr>
" - send *a*ll, i.e. file
nnoremap <silent> <localleader>aa :w<cr>:call neoterm#do("include(\"%\")")<cr>
nnoremap <silent> <localleader>ae :w<cr>:TREPLSendFile<cr>
" - send *p*aragraph (cursor location changes)
nnoremap <silent> <localleader>pp vip:TREPLSendLine<cr><esc>
nnoremap <silent> <localleader>pd vip:TREPLSendLine<cr><esc>}
" - send *s*election (cursor location changes)
vnoremap <silent> <localleader>ss :TREPLSendSelection<cr>
vnoremap <silent> <localleader>sd :TREPLSendSelection<cr>j
" - send *l*ine, optionally go *d*own, *q*uickly continue editing...
nnoremap <silent> <localleader>l :TREPLSendLine<cr>
nnoremap <silent> <localleader>d :TREPLSendLine<cr>j
nnoremap <silent> <localleader>q :TREPLSendLine<cr>i

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
