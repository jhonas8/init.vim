# My personal NEOVIM settings # 

[<img
    alt="vim icon"
    width="60px"
    align="center"
    src="https://www.svgrepo.com/show/354105/neovim.svg"
/>][neovim]

#### [GruvBox colorscheme ](https://github.com/morhetz/gruvbox) #####

<img
    alt="gruvbox print"
    src="./gruvboxprint.png"
/>

<br/> <br/>

## Settings for React and Typescript ##

### Scripts ###

- Coc auto-recognize extension .(JSX, TSX, TS, JS)
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

[neovim]: https://neovim.io
[coc-eslint]: https://github.com/neoclide/coc-prettier
[coc-prettier]: https://github.com/neoclide/coc-prettier
[coc-tsserver]: https://github.com/neoclide/coc-tsserver
