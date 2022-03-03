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

[neovim]: https://neovim.io
[coc-eslint]: https://github.com/neoclide/coc-prettier
[coc-prettier]: https://github.com/neoclide/coc-prettier
[coc-tsserver]: https://github.com/neoclide/coc-tsserver
[vim-javascript]: https://github.com/pangloss/vim-javascript
[typescript-vim]: https://github.com/leafgarland/typescript-vim
