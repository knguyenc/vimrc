"------Plugins config------"
" Set leader key
let mapleader=','

" Clear autocmd group before add
autocmd!

" NERDTree
noremap <leader>nt :NERDTreeToggle<CR>
noremap <leader>nm :NERDTreeMirror<CR>
noremap <leader>nf :NERDTreeFind<CR>
" Open NERDTree when nvim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()==1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeWinSize=35
let g:NERDTreePatternMatchHighlightFullName=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let g:NERDDefaultAlign='left'
let g:NERDCustomDelimiters={ 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeWinPos='left'

" NERDTree Commenter
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1

" vim airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#formatter='default'

" Get rid of scratch buffer
set completeopt-=preview

" GitGutter
let g:gitgutter_max_signs=2000

" CtrlP
let g:ctrlp_map='<leader>ff'
let g:ctrlp_cmd='CtrlP'
" Default search in current directory CtrlP
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore='build\|target\|__pycache__\|node_modules\|.DS_Store\|.git\|images\'
let g:ctrlp_max_files=20000

" CtrlSF
nmap <leader>fa <Plug>CtrlSFPrompt
vmap <leader>fa <Plug>CtrlSFVwordPath

" Ale
" Error and warning signs.
let g:ale_sign_error='»'
let g:ale_sign_warning='¤'
" Error lines limit
let g:ale_list_window_size=6

" Deoplete
let g:deoplete#enable_at_startup=1
let g:ale_completion_enabled=1

" UltiSnips
" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical""
"------End plugins config------"
