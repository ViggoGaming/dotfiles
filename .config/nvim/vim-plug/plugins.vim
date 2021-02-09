" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " onedark theme
    Plug 'joshdick/onedark.vim'
    " Nord theme
    Plug 'arcticicestudio/nord-vim'
    " coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plugin for live html, css and javascript editing
    Plug 'turbio/bracey.vim'
    " Colorize for showing colors live
    Plug 'norcalli/nvim-colorizer.lua' 
    " Rainbow parentheses
    Plug 'junegunn/rainbow_parentheses.vim'
    " Plugin for a floating terminal inside of neovim
    Plug 'voldikss/vim-floaterm'
    " For commenting out lines in different languages
    Plug 'tpope/vim-commentary'
    " Airline for status bar
    Plug 'vim-airline/vim-airline'
    " A collection of airline themes
    Plug 'vim-airline/vim-airline-themes'
    " fzf integration for faster file navigation
    Plug 'junegunn/fzf.vim'
call plug#end()
