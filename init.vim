lua require('plugins')

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
        Plug 'mlaursen/vim-react-snippets'
        Plug 'townk/vim-autoclose'
        Plug 'alvan/vim-closetag'

        Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        Plug 'ryanoasis/vim-devicons'

        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'

        Plug 'github/copilot.vim'
        Plug 'Olical/conjure'

        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
        Plug 'nvim-lualine/lualine.nvim'
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
        Plug 'windwp/nvim-spectre'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'lewis6991/gitsigns.nvim'
        Plug 'kdheepak/lazygit.nvim'
        Plug 'kyazdani42/nvim-web-devicons'

        Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
       
        Plug 'bignimbus/pop-punk.vim'
        Plug 'norcalli/nvim-colorizer.lua'
        Plug 'preservim/nerdtree'
        Plug 'sheerun/vim-polyglot'
        Plug 'dense-analysis/ale'
        Plug 'ryanoasis/vim-devicons'
        Plug 'arcticicestudio/nord-vim'
        Plug 'kassio/neoterm'
        Plug 'ctrlpvim/ctrlp.vim'
        Plug 'junegunn/fzf'
        Plug 'liuchengxu/vim-clap'
        Plug 'guns/vim-sexp',    {'for': 'clojure'}
        Plug 'liquidz/vim-iced', {'for': 'clojure'}

        Plug 'shaunsingh/moonlight.nvim'
    call plug#end()
    
	autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
	autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
    
    "Coc autocmds
    autocmd CursorHold * silent call CocActionAsync('highlight')
    "autocmd BufWritePre *.{js,jsx,ts,tsx} :call CocActionAsync('format')

	set number
	set mouse=a

	if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
		let g:coc_global_extensions += ['coc-prettier']
	endif

	if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
		let g:coc_global_extensions += ['coc-eslint']

	endif

    let g:iced_enable_default_key_mappings = v:true
    
    let g:coc_global_extensions = ['coc-tsserver']

    set tgc
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
    set relativenumber
	set nowritebackup
	set cmdheight=2
	set signcolumn=yes
    set ma 
    set encoding=UTF-8
    set clipboard=unnamedplus
    set termguicolors

    " pop-punk ANSI colors for vim terminal
    let g:terminal_ansi_colors = pop_punk#AnsiColors()

    colorscheme moonlight

    " for the airline theme - note the underscore instead of the hyphen
    let g:airline_theme = 'pop_punk'

    " just for fun
    let g:airline_section_c = '🎸 %F'

    syntax on
	filetype plugin indent on

    lua require('plugins.lualine')

    set runtimepath^=~/.vim/bundle/bbye

    map <silent> <C-n> :NERDTreeToggle<CR>
    
    map <silent> <C-l> :LazyGit<CR>

    map <silent> <C-s> :w!<CR>
    map <silent> <C-x> :q!<CR>

    nnoremap <A-j> :m+<CR>==
    nnoremap <A-k> :m-2<CR>==

    inoremap <A-h> <C-o>h
    inoremap <A-j> <C-o>j
    inoremap <A-k> <C-o>k
    inoremap <A-l> <C-o>l
    
    nnoremap <leader>S <cmd>lua require('spectre').open()<CR>
    nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    
    command Java !javac %:t && java % + '.class'

    lua require("toggleterm").setup{}

    autocmd TermEnter term://*toggleterm#* tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
    nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
    inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

    let g:WebDevIconsUnicodeDecorateFolderNodes = 1
    let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

    let g:neoterm_default_mod='belowright' 
    let g:neoterm_size=16 
    let g:neoterm_autoscroll=1 
    nnoremap <leader><cr> :TREPLSendLine<cr>j 
    vnoremap <leader><cr> :TREPLSendSelection<cr> 
    set nocompatible
    
    filetype off
    filetype plugin on
    let &runtimepath.=',~/.vim/bundle/neoterm'
    let g:clojure_syntax_keywords = {
                \  'clojureMacro': ["defproject", "defcustom"],
                \ 'clojureFunc': ["string/join", "string/replace"]
                \}

    let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

    let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

    let g:closetag_filetypes = 'html,xhtml,phtml'

    let g:closetag_xhtml_filetypes = 'xhtml,jsx'

    let g:closetag_emptyTags_caseensitive = 1

    let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

    let g:closetag_shortcut = '>'

    let g:closetag_close_shortcut = '<leader>>'

    let g:UltiSnipsExpandTrigger="<tab>"  
    let g:UltiSnipsJumpForwardTrigger="<c-j>"
    let g:UltiSnipsJumpBackwardTrigger="<c-k>"
    let g:mkdp_auto_close = 0
    nnoremap <A-p> :MarkdownPreview<CR>

