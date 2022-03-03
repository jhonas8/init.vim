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
    src="./gruvboxprint.png"
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
    src="https://www.svgrepo.com/show/221324/jsx.svg"
    style="filter: sepia(1);"
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
    src="https://www.svgrepo.com/show/165013/html.svg"
/>][vim-autoclose]
[<img
    alt="vim-closetag"
    align="left"
    width="22px"
    src="https://www.svgrepo.com/show/143133/html-coding.svg"
/>][vim-autoclose-tag]

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
