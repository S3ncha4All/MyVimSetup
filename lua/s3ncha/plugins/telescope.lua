return {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '1.8.0',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-ui-select.nvim' },

      -- Useful for getting pretty icons, but requires a Nerd Font.
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  }
}
