set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" YAML highlighting
Plugin 'pearofducks/ansible-vim'
" vim statusbar
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"" ------------------------------------------------------------------
	"set nocompatible
	syntax on
	set encoding=utf-8
	set laststatus=2
	set showcmd
	"set noshowmode
	"set number
	"set relativenumber

" Spell-check set to F6:
	map <F6> :setlocal spell! spelllang=en_us<CR>

" Use urlview to choose and open a url:
	:noremap <leader>u :w<Home>silent <End> !urlview<CR>

" Copy selected text to system clipboard (requires xclip installed):
	vnoremap <C-c> "cy<esc>:!echo -n '<C-R>c' \|<space>xclip<CR><enter>

" Automatically deletes all tralling whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" C-T for new tab
	nnoremap <C-t> :tabnew<cr>



" Tab colour schemes
hi TabLineFill ctermfg=Black ctermbg=DarkGreen
hi TabLine ctermfg=DarkBlue ctermbg=Black
hi TabLineSel ctermfg=DarkRed ctermbg=Blue

" Left hand side
set statusline=
set statusline+=%3*\ %n\  " buffer number
set statusline+=%1*\ %F\  " filepath
set statusline+=%2*\ %m " modified"
set statusline+=%1*\ %r " readonly?
set statusline+=\ %h " help file?
" Right hand side
set statusline+=%="
set statusline+=\ %y " file type
set statusline+=\ %l " line number
set statusline+=:
set statusline+=%L " line count
set statusline+=\ %P
set statusline+=%#warningmsg#

hi User1 ctermbg=Black  ctermfg=Blue
hi User2 ctermbg=Black  ctermfg=Red cterm=bold
hi User3 ctermbg=Black  ctermfg=DarkYellow
hi User4 ctermbg=DarkBlue  ctermfg=DarkBlue

