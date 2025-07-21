return {
  'nvzone/floaterm',
  dependencies = 'nvzone/volt',
  cmd = 'FloatermToggle',
  keys = {
    { '<F4>', '<cmd>FloatermToggle<CR>', mode = { 'n', 'i', 't' }, desc = 'Toggle floating terminal' },
  },
  opts = {
    shell = 'bash',
    border = false,
    size = { h = 60, w = 70 },
    terminals = {
      { name = 'Main' },
      { name = 'Secondary' },
    },
    mappings = {
      term = function(buf)
        vim.keymap.set({'n','t'}, '<C-p>', '<cmd>FloatermPrev<CR>', {buffer = buf})
        vim.keymap.set({'n','t'}, '<C-n>', '<cmd>FloatermNext<CR>', {buffer = buf})
        vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {buffer = buf})
      end,
    },
  },
  
  init = function()
    vim.api.nvim_set_keymap('n', '<F4>', '<cmd>FloatermToggle<CR>', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('i', '<F4>', '<cmd>FloatermToggle<CR>', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', '<F4>', '<cmd>FloatermToggle<CR>', {noremap = true, silent = true})
  end
}