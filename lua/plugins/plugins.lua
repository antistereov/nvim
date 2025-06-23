return {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.8', requires = { { 'nvim-lua/plenary.nvim' } } },
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}

}
