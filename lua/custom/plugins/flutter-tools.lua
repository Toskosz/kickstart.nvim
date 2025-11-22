return {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = function()
        require('flutter-tools').setup {} -- use default settings
        vim.keymap.set('n', '<leader>fco', '<cmd>Telescope flutter commands<cr>', { desc = 'Flutter commands' })
        pcall(require('telescope').load_extension, 'flutter')
    end,
}
