set nocompatible              " be iMproved, required
filetype off                  " required"

" set the runtime path to include Vundle and initialize
set rtp+=/opt/vim_runtime/bundle/Vundle.vim
let path='/opt/vim_runtime/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" other plugin
Plugin 'rhysd/vim-clang-format'
Plugin 'Valloric/YouCompleteMe'
Plugin 'millermedeiros/vim-esformatter'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Show line number
set nu

" You complete me
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files =1
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_error_symbol = '!'
let g:ycm_warning_symbol = '!*'
let g:ycm_show_diagnostics_ui = 1
let g:ycm_open_loclist_on_ycm_diags = 1
let g:ycm_max_diagnostics_to_display = 1000
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

nnoremap $gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap $gf :YcmCompleter GoToDefinition<CR>
nnoremap $gd :YcmCompleter GoToDeclaration<CR>
nnoremap <F7> :YcmDiags<CR>


" vim-clang-format
let g:clang_format#command = "clang-format-4.0"
let g:clang_format#detect_style_file = 1
nnoremap <F6> :ClangFormat<CR>
vnoremap <F6> :ClangFormat<CR>

" Show invisible characters
set list
set listchars=tab:\|\ ,trail:· 

" Open NERDTree
nnoremap <F5> :NERDTree<CR>
let g:NERDTreeWinPos = "left"

" Change the auto-complete color
highlight Pmenu ctermbg=234 ctermfg=25

" Enable mouse copy
set mouse=

" Enable auto reload
set autoread

" Enable cursor line
set cursorline
hi CursorLine   cterm=NONE ctermbg=8 ctermfg=NONE

" yanking/deleting operations automatically copy to the system clipboard
" set clipboard^=unnamedplus

" Automatically copy when visual mode
set clipboard+=autoselect
set guioptions+=a

" Install ctags before use tagbar 
nnoremap <F9> :TagbarToggle<CR>
" Automatically focus
let g:tagbar_autofocus = 1
" For Makefile
let g:tagbar_type_make = {
	\ 'kinds':[
		\ 'm:macros',
		\ 't:targets'
	\ ]
\}
" Automatically open when startup
" autocmd VimEnter * nested :TagbarOpen

" Turn on specific .vimrc files
set exrc
set secure
