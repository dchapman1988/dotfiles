" THE NEXT 3 LINES MUST BE FIRST
execute pathogen#infect()
syntax on
filetype plugin indent on

" ADD YOUR LINES BELOW HERE

" ============================================================================
" TPOPE'S ESSENTIAL RAILS PLUGINS
" ============================================================================
" Install these via pathogen in ~/.vim/bundle/:
" git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
" git clone https://github.com/tpope/vim-rails.git ~/.vim/bundle/vim-rails
" git clone https://github.com/tpope/vim-bundler.git ~/.vim/bundle/vim-bundler
" git clone https://github.com/tpope/vim-rake.git ~/.vim/bundle/vim-rake
" git clone https://github.com/tpope/vim-endwise.git ~/.vim/bundle/vim-endwise
" git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
" git clone https://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary
" git clone https://github.com/tpope/vim-repeat.git ~/.vim/bundle/vim-repeat
" git clone https://github.com/tpope/vim-dispatch.git ~/.vim/bundle/vim-dispatch
" git clone https://github.com/tpope/vim-abolish.git ~/.vim/bundle/vim-abolish

" Git blame shortcut (requires vim-fugitive)
nnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gs :Git<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gc :Git commit<CR>

" Rails.vim shortcuts
" gf works on partials, models, etc.
" :A switches between implementation and test
" :R switches to related file
" :Emodel, :Econtroller, :Eview to jump to files

" Enable true color support in iTerm2
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Set terminal type for iTerm2
set term=xterm-256color

" Set encoding
set encoding=utf-8

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Enable syntastic syntax checking
let g:syntastic_quiet_messages = {'level': 'warnings'}

" gist-vim defaults - simplified for macOS
let g:gist_clip_command = 'pbcopy'

" Make tab navigation nicer
map <C-J> :tabn<CR>
map <C-K> :tabp<CR>

" Make opening files in a new tab nicer
map <C-O> :tabnew 

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" Turn off menu in gui (for MacVim)
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Mouse settings - enable mouse support in iTerm2
set mouse=a

" Dracula theme configuration
syntax enable
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'  " optional: more contrast

" Airline configuration
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Better Ruby syntax highlighting
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_no_expensive = 1

" Better color for Ruby symbols
hi rubySymbol ctermfg=magenta guifg=#ff79c6

" Better ERB highlighting
hi erubyDelimiter ctermfg=cyan guifg=#8be9fd

" Highlight the current line
set cursorline

" Set cursorline highlighting colors (Dracula-friendly)
if has('gui_running') || exists('+termguicolors')
  :highlight CursorLine guibg=#44475a
  :highlight CursorColumn guibg=#44475a
else
  :highlight CursorLine ctermbg=236
  :highlight CursorColumn ctermbg=236
endif

" Highlight the current column
set cursorcolumn

" Show line numbers
set number
set ruler

" Better backspace behavior
set backspace=indent,eol,start

" iTerm2 specific cursor shape changes
if exists('$ITERM_SESSION_ID')
  " Insert mode - thin vertical line
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  " Replace mode - horizontal line
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"  
  " Normal mode - block
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Enable clipboard integration with system clipboard
if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

set completefunc=syntaxcomplete#Complete

" Additional macOS/iTerm2 optimizations
set ttyfast
set lazyredraw
