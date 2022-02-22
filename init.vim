Plug section 
	call plug#begin()
		Plug 'pangloss/vim-javascript'
		Plug 'leafgarland/typescript-vim'
		Plug 'peitalin/vim-jsx-typescript'
		Plug 'styled-components/vim-styled-components', {'branch': 'main'}
		Plug 'jparise/vim-graphql'
		Plug 'neoclide/coc.nvim', {'branch':'release'}
			let g:coc_global_extensions=[
				\ 'coc-tsserver'
			\]	
        Plug 'preservim/nerdtree'
        Plug 'sheerun/vim-polyglot'
        Plug 'dense-analysis/ale'
	    Plug 'SirVer/ultisnips'
        Plug 'mlaursen/vim-react-snippets'
        Plug 'andweeb/preisence.nvim'
        Plug 'nvim-treesitter/nvim-treesitter'
        Plug 'townk/vim-autoclose'
        Plug 'ryanoasis/vim-devicons'
        
    call plug#end()

#Configuration section
	
	#Scripts
	autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
	autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

	#Settings
	set number
	set mouse=a

	#Coc configuration
	if isdirectory('./node_modules')
	&& isdirectory('./node_modules/prettier')
		let g:coc_global_extensions += ['coc-prettier']
	endif

	if isdirectory('./node_modules')
	&& isdirectory('./node_modules/eslint')
		let g:coc_global_extensions += ['coc-eslint']
	endif
    
    let g:coc_global_extensions = ['coc-tsserver']

    #Nvim settings 
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set expandtab
	set hidden
	set incsearch 
	set ignorecase
	set smartcase
	set scrolloff=8
	set autoread
	set nobackup
	set nowritebackup
	set cmdheight=2
	set signcolumn=yes
    set ma 
    set encoding=UTF-8

    filetype on
	filetype plugin on
	filetype indent on

    #shortcut NERDTree 
    map <silent> <C-n> :NERDTreeToggle<CR>
    
    #Shortcut save and close
    map <silent> <C-s> :w!<CR>
    map <silent> <C-x> :q!<CR>
    
    require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
        enable = true,              -- false will disable the whole extension
        },
    }

   command Java !javac %:t && java % + '.class'

   #NERDTree icons config
   let g:WebDevIconsUnicodeDecorateFolderNodes = 1
   let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
