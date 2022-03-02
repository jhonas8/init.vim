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
        Plug 'alvan/vim-closetag'
        #Themes plugins
        Plug 'arcticicestudio/nord-vim'
        Plug 'morhetz/gruvbox'
        #neoterm
        Plug 'kassio/neoterm'

    call plug#end()

#Configuration section
    #Colorscheme 
    colorscheme gruvbox
    let g:gruvbox_transparent_bg=0.85 
    set background=dark
    
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
    
    #NERDTree autocmd
    #autocmd BufEnter NERD_tree_* | execute 'normal R' #this will auto-refresh the nerdtree anytime it is focused

    #Shortcut save and close
    map <silent> <C-s> :w!<CR>
    map <silent> <C-x> :q!<CR>

    #Shortcut to move lines up and down using alt 
    nnoremap <A-j> :m+<CR>==
    nnoremap <A-k> :m-2<CR>==
    
    require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
        enable = true,              -- false will disable the whole extension
        },
    }
    
   #Java simple compilation shortcut
   command Java !javac %:t && java % + '.class'

   #NERDTree icons config
   let g:WebDevIconsUnicodeDecorateFolderNodes = 1
   let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

   #Kassio neoterm configuration
    let g:neoterm_default_mod='belowright' " open terminal in bottom split
    let g:neoterm_size=16 " terminal split size
    let g:neoterm_autoscroll=1 " scroll to the bottom when running a command
    nnoremap <leader><cr> :TREPLSendLine<cr>j " send current line and move down
    vnoremap <leader><cr> :TREPLSendSelection<cr> " send current selection
    set nocompatible
    
    filetype off
    filetype plugin on
    let &runtimepath.=',~/.vim/bundle/neoterm'

   " filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
