# My personal NEOVIM settings # 

[<img
    alt="vim icon"
    width="60px"
    align="center"
    src="https://www.svgrepo.com/show/354105/neovim.svg"
/>][neovim]

## [GruvBox colorscheme ](https://github.com/morhetz/gruvbox) ##

<img
    alt="gruvbox print"
    src="./assets/images/gruvboxprint.png"
/>

<br/> <br/>

## Settings for React and Typescript ##

### Scripts ###

- Coc auto-recognize extension .(JSX, TSX, TS, JS)
    <br/>
    `autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
	autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
`

- [Coc configuration for eslint][coc-eslint]
    <br/>
  `if isdirectory('./node_modules')
	&& isdirectory('./node_modules/eslint')
		let g:coc_global_extensions += ['coc-eslint']
	endif`

- [Coc configuration for prettier][coc-prettier]
    <br/>
    `if isdirectory('./node_modules')
	&& isdirectory('./node_modules/prettier')
		let g:coc_global_extensions += ['coc-prettier']
	endif`
- [Coc typescript-server][coc-tsserver]
    `let g:coc_global_extensions = ['coc-tsserver']`

### Plugins ###

[<img
    alt="vim-javascript"
    align="left"
    width="22px"
    src="https://www.svgrepo.com/show/349419/javascript.svg"
/>][vim-javascript]
[<img
    alt="typescript-vim"
    align="left"
    width="22px"
    src="https://www.svgrepo.com/show/349540/typescript.svg"
/>][typescript-vim]
[<img
    alt="vim-jsx-typescript"
    align="left"
    width="22px"
    src="https://w7.pngwing.com/pngs/661/898/png-transparent-react-javascript-library-web-development-vue-js-funding-icon-logo-symmetry-web-development-thumbnail.png"
    style="filter: invert(100%);"
/>][vim-jsx-typescript]
[<img
    alt="syled-components"
    align="left"
    width="22px"
    src="https://www.svgrepo.com/show/374104/styled.svg"
/>][styled-components]
[<img
    alt="vim-graphql"
    align="left"
    width="22px"
    src="https://www.svgrepo.com/show/353834/graphql.svg"
/>][vim-graphql]
[<img
    alt="coc vim"
    align="left"
    width="22px"
    src="https://user-images.githubusercontent.com/251450/55009068-f4ed2780-501c-11e9-9a3b-cf3aa6ab9272.png"
/>][coc-vim]
[<img
    alt="vim react snippets"
    align="left"
    width="22px"
    src="https://www.svgrepo.com/show/354259/react.svg"
/>][vim-react-snippets]
[<img
    alt="autoclose"
    align="left"
    width="22px"
    src="https://www.nicepng.com/png/detail/947-9477772_html-closing-tag-red-circle.png"
/>][vim-autoclose]
[<img
    alt="vim-closetag"
    align="left"
    width="22px"
    src="https://www.svgrepo.com/show/250451/coding-html.svg"
/>][vim-autoclose-tag]

<br/> <br/>

## Other Scripts ## 
**Java Compiler**  
> Simple script to compile and execute the current java file.
>  
> `command Java !javac %:t && java % + '.class'`
  
**Neoterm configuration**  
> Neoterm settings fot its behavior and specific key mappings.  
    
    let g:neoterm_default_mod='belowright' " open terminal in bottom split
    let g:neoterm_size=16 " terminal split size
    let g:neoterm_autoscroll=1 " scroll to the bottom when running a command
    nnoremap <leader><cr> :TREPLSendLine<cr>j " send current line and move down
    vnoremap <leader><cr> :TREPLSendSelection<cr> " send current selection
    set nocompatible
    
    filetype off
    filetype plugin on
    let &runtimepath.=',~/.vim/bundle/neoterm' 

## Key Remap ##

**Move line up and down**  
    nnoremap <A-j> :m+<CR>==
    nnoremap <A-k> :m-2<CR>== 

[neovim]: https://neovim.io
[coc-eslint]: https://github.com/neoclide/coc-prettier
[coc-prettier]: https://github.com/neoclide/coc-prettier
[coc-tsserver]: https://github.com/neoclide/coc-tsserver
[vim-javascript]: https://github.com/pangloss/vim-javascript
[typescript-vim]: https://github.com/leafgarland/typescript-vim
[vim-jsx-typescript]: https://github.com/peitalin/vim-jsx-typescript
[styled-components]: https://github.com/styled-components/vim-styled-components
[vim-graphql]: https://github.com/jparise/vim-graphql
[coc-vim]: https://github.com/neoclide/coc.nvim
[vim-react-snippets]: https://github.com/mlaursen/vim-react-snippets
[vim-autoclose]: https://github.com/Townk/vim-autoclose
[vim-autoclose-tag]: https://github.com/alvan/vim-closetag
