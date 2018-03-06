set encoding=utf-8
"Following vimrc uses pathogen + syntastic + flake8. This needs to be
"installed before you can use this vimrc. This configuration does not contain
"any themes or color configuration.
execute pathogen#infect()


"Tabs are shown as > followed by a stream of - characters. Number of - depends
"on how many spaces a tab should be defined per tabstop setting. 
"Trailing whitespace is shown as .
"Set list is needed for configuration to work
set listchars=tab:>-,trail:·
set list

"Use syntax highlighting
syntax on

"Highlight the cursorline in vim
set cursorline

"When a file is loaded vim will try to recognize the type of the file ans et
"the filetype option. See: :help :filetype-overview
filetype plugin indent on

"This is so useful, if you search for something containing UPPERCASE letters
"it will do a case sensitive search. If you search for something with only
"lovercase it will do a case insensitive search. Use \c to override this.
set smartcase

"You can use ignorecase instead though if you hate smartindent
"set ignorecase

"Changes regex characters to have the same meaning as in GNU grep.
set magic

"Change the default number of lines that are remembered (Default is 20)
set history=700

"When typing a search command, highlight matches in real time
set incsearch

"Use line numbering
set nu

"Use F2 to toggle between :set paste
set pastetoggle=<F2>

"Add a statusline for syntastic errors in vim
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Always update location list when checkers are run
let g:syntastic_always_populate_loc_list = 1

"Automaticall update location list
let g:syntastic_auto_loc_list = 1

"Run checkers when you update file
let g:syntastic_check_on_open = 1

"Change below to 1 if you want to check on wq
let g:syntastic_check_on_wq = 0

"Use flake8 as your python lint
let g:syntastic_python_checkers = ['flake8']

"Puppet lint
let g:syntastic_puppet_checkers=['puppetlint']

"Highlight the ligne at length 80. PEP8 E501 defines that the maximum line
"length in python should be 79. This is a way to easy see when the line is too
"long.
"set colorcolumn=80

"Custom ErrorMsg matches (Trailing whitespace + lines ofer 120)
match ErrorMsg '\s\+$'
"match ErrorMsg '\%>120v.\+'

"Uncomment the row below if you want to ignore E501 errors. Note E501 should
"be followed, but you may ignore it in scenarios where it fits (Like URLs)
let g:syntastic_python_flake8_args='--ignore=E501'

"For specified fileending, use specified indention settings
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |

au BufNewFile,BufRead *.sh
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |

autocmd FileType yaml,yml setlocal ts=2 sts=2 sw=2 expandtab
"Remap < and > to <gv and >gv (Indent and stay highlighted)
vnoremap < <gv
vnoremap > >gv

"Change settings for netrw
"let g:netrw_liststyle = 3
"let g:netrw_banner = 0

"Change which window files will be opened (Default is same window as netrw)
" 1 new horizontal split
" 2 new vertical split
" 3 open in new tab
" 4 open in previous window
"let g:netrw_browse_split = 4

"NERDtree like setup for netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25

"Automatically open netrw when starting vim
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
