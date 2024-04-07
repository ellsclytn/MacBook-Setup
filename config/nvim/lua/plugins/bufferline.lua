return {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'VeryLazy',
    opts = {
        options = {
            mode = 'buffers',
            show_buffer_close_icons = false,
            show_close_icon = false,
        },
    },
}
