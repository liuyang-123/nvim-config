-- General settings

-- Vim compatibility
vim.opt.compatible = false

-- UI settings
vim.opt.number = true
vim.opt.showmode = true
vim.opt.cursorline = true
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.wildmenu = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.mouse = 'a'

-- Theme
vim.cmd('syntax on')
vim.cmd('colorscheme koehler')

-- Highlight customizations
vim.api.nvim_set_hl(0, 'Title', { fg = 'Green' })
vim.api.nvim_set_hl(0, 'Underlined', { bg = 'DarkGray', fg = 'Black', bold = true })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#000050', fg = '' })

-- Hop (EasyMotion replacement) highlight settings
vim.api.nvim_set_hl(0, 'HopNextKey', { link = 'ErrorMsg' })
vim.api.nvim_set_hl(0, 'HopNextKey1', { link = 'ErrorMsg' })
vim.api.nvim_set_hl(0, 'HopNextKey2', { link = 'ErrorMsg' })
vim.api.nvim_set_hl(0, 'HopUnmatched', { link = 'Comment' })

-- Status line
vim.opt.statusline:append('%F')

-- Indentation
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- XML indentation
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'xml',
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end
})

-- File format
vim.opt.fileformat = 'unix'
vim.opt.selectmode:append('mouse')

-- Other settings
vim.opt.backspace = 'indent,eol,start'
vim.opt.viminfo = '\'30'
vim.opt.maxmempattern = 2000000
vim.opt.autowriteall = true

-- Enable matchit
vim.cmd('packadd! matchit') 