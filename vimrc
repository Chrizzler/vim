" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
  " best color theme
  Plug 'micha/vim-colors-solarized'
  " On-demand loading
  " cool sidebar, if startet without file as argument
  Plug 'scrooloose/nerdtree' 
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-commentary'
  " cool reapting with .
  Plug 'sjl/gundo.vim'
  " ruby config files
  Plug 'vim-ruby/vim-ruby'
  " mach html tags
  Plug 'gregsexton/MatchTag'
  " git wrapper
  Plug 'tpope/vim-fugitive'
  " Plug 'tomtom/tlib_vim'
  " some cool addons
  Plug 'MarcWeber/vim-addon-mw-utils'

  " for typescript cool things
  Plug 'quramy/tsuquyomi'

  " tab snippets 
  " Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'
  " cooler json makeup
  Plug 'elzr/vim-json'
  " visual undo tree
  Plug 'sjl/gundo.vim'
  " typescript hightlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'HerringtonDarkholme/yats.vim'
  " Plug 'Quramy/tsuquyomi'

  Plug 'shougo/vimproc.vim', { 'do': 'make' }
  Plug 'ngmy/vim-rubocop'
  Plug 'chiel92/vim-autoformat'
  Plug 'alvan/vim-closetag'
  Plug 'chun-yang/auto-pairs'
  " Plug 'tpope/vim-fireplace'
  Plug 'scrooloose/syntastic'
  " highlight chages with git diff
  Plug 'airblade/vim-gitgutter'
  " search with ctrlp
  Plug 'kien/ctrlp.vim'
  " cool info bar
  Plug 'vim-airline/vim-airline'
  Plug 'scrooloose/nerdcommenter'
  Plug 'thoughtbot/vim-rspec'

  " Auto completer
  Plug 'ervandew/supertab'
  " Plug 'shougo/neocomplete.vim'
call plug#end()

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible
scriptencoding utf-8
set fileencoding=utf-8
set encoding=utf-8
set history=1000

filetype plugin on
filetype indent on

set showcmd                    "show incomplete cmds down the bottom
set showmode                   "show current mode down the bottom
set backspace=indent,eol,start "allow backspacing over everything in insert mode

syntax on
set colorcolumn=80
set tabstop=2
set number
set incsearch
set hlsearch
set wrap
set linebreak
set ignorecase
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set t_Co=256
" colorscheme monokai
" let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized
highlight ColorColumn ctermbg=Darkgrey

set statusline+=%#warningmsg#
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
autocmd FileType ruby let g:rubycomplete_classes_in_global=1

"Close HTML TAGS
iabbrev <// </<C-X><C-O>

"NERDtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

"Templates
function Template(name)
  execute "r~/.vim/templates/" . a:name
endfunction

function ListTemplateFiles(ArgLead, CmdLine, CursorPos)
  return map(split(glob('~/.vim/templates/*'), "\n"), 'fnamemodify(v:val, ":t")')
endfunction

command! -nargs=1 -complete=customlist,ListTemplateFiles Template call Template(<f-args>)

command Log :! tail -f $(rails runner 'puts Rails.root')/log/development.log
command! Psql :! psql

"Rspec anstelle von Minitest
let g:rails_projections = {
      \  'app/*.rb': {
      \     'alternate': 'spec/{}_spec.rb',
      \     'type': 'source'
      \   },
      \  'spec/*_spec.rb': {
      \     'alternate': 'app/{}.rb',
      \     'type': 'test'
      \   }
      \}
let g:tsuquyomi_use_local_typescript = 0
