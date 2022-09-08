vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

return require('packer').startup(function(use)
    local lua_path = function(name)
        return string.format("require'plugins.%s'", name)
    end

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }   
    use { 'kazhala/close-buffers.nvim' }
end)
