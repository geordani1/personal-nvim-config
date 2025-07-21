return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        separator_style = 'slant',
        diagnostics = 'nvim_lsp',
        
        -- Añade estas opciones para mostrar íconos:
        show_buffer_icons = true,          -- Activar íconos de buffers
        show_buffer_close_icons = false,    -- Ocultar ícono de cerrar individual
        show_close_icon = false,            -- Ocultar ícono de cerrar todo
        color_icons = true,                 -- Íconos en color
        enforce_regular_tabs = false,       -- Permitir buffers de diferente ancho
        
        -- Personalización de íconos
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        indicator = {
          icon = '▎',
          style = 'icon',
        },
        
        -- Estilo de los íconos
        icon_separator_active = '▎',
        icon_separator_inactive = '▎',
        icon_close_tab = '',
        icon_close_tab_modified = '●',
        
        -- Ordenamiento
        sort_by = 'insert_after_current',
        
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'EXPLORER',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    }
  end,
  keys = {
    { '<leader>bp', '<Cmd>BufferLinePick<CR>', desc = 'Pick buffer' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Close left' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = 'Close right' },
    { '<S-l>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next buffer' },
    { '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev buffer' },
    
    -- Te recomiendo añadir estos atajos también:
    { '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', desc = 'Buffer 1' },
    { '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', desc = 'Buffer 2' },
    { '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', desc = 'Buffer 3' },
    { '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', desc = 'Buffer 4' },
    { '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', desc = 'Buffer 5' },
    { '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', desc = 'Buffer 6' },
    { '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', desc = 'Buffer 7' },
    { '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>', desc = 'Buffer 8' },
    { '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>', desc = 'Buffer 9' },
  },
}