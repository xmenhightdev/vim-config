"--------------------------set---------------------------------------"
set autowrite
set mouse=a
set number
set tabstop=4
set smarttab
set cindent
set shiftwidth=4
set autoread

"--------------------------plugin-------------------------------------"
call plug#begin('~/.vim/plugged')

	" theme
	Plug 'joshdick/onedark.vim'
	Plug 'mhartington/oceanic-next'
	Plug 'ayu-theme/ayu-vim'
	
	"Ruby autocomplete
	"Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

	" (Optional) Multi-entry selection UI.
	Plug 'junegunn/fzf'


	" nerdtree
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin' 				" Git status
	Plug 'ryanoasis/vim-devicons' 					" Icon
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'unkiwii/vim-nerdtree-sync'

	" terminal
	Plug 'voldikss/vim-floaterm'

	" file search
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" Status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" coc vim
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
	Plug 'jiangmiao/auto-pairs' 					" Parenthesis auto 
	Plug 'alvan/vim-closetag'
	Plug 'mattn/emmet-vim' 
	Plug 'preservim/nerdcommenter' 					" Comment code 
	Plug 'liuchengxu/vista.vim' 					" Function tag bar 
	Plug 'alvan/vim-closetag'

	" Code syntax highlight
	Plug 'yuezk/vim-js' 						" Javascript
	Plug 'MaxMEllon/vim-jsx-pretty' 				" JSX/React
	Plug 'jackguo380/vim-lsp-cxx-highlight'				" C++ syntax
	Plug 'uiiaoo/java-syntax.vim'

call plug#end()

"--------------------------extension setting------------------------"

let vim_setting_folder = '~/.vim/setting/'
execute 'source '.vim_setting_folder.'nerdtree.vim'
execute 'source '.vim_setting_folder.'fzf.vim'
execute 'source '.vim_setting_folder.'floaterm.vim'
execute 'source '.vim_setting_folder.'coc.vim'
execute 'source '.vim_setting_folder.'map.vim'
set runtimepath+=~/.vim/plugged/LanguageClient-neovim

"--------------------------color theme-----------------------------"

syntax on
"colorscheme onedark

"" OceanicNext theme
if (has("termguicolors"))
	set termguicolors
endif
"colorscheme OceanicNext

" colors-solarized theme
syntax enable
set background=dark
"colorscheme solarized

" ayu theme 
set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"-------------------------------------------------------------------"









"-------------------------------------------------------------------"







