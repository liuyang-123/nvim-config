-- Key mappings

-- Leader key
vim.g.mapleader = "\\"

-- Normal mode mappings
vim.keymap.set('n', '<Leader><Leader>v', '<C-v>', { noremap = true })
vim.keymap.set('n', 'H', '^', { noremap = true })
vim.keymap.set('n', 'L', '$', { noremap = true })

-- Command mode mappings
vim.keymap.set('c', '<C-p>', '<C-r>0', { noremap = true })

-- Copy/Paste with system clipboard
vim.keymap.set({'n', 'v'}, '<C-c>', '"*y', { noremap = true })
vim.keymap.set('n', '<C-v>', '"*p', { noremap = true })
vim.keymap.set('i', '<C-v>', '<Esc>"*pgaa', { noremap = true })
vim.keymap.set('c', '<C-v>', '<C-r>*', { noremap = true })

-- Case conversion
vim.keymap.set('n', '<Leader>cs', ':s/\\(\\<\\u\\l\\+\\|\\l\\+\\)\\(\\u\\)/\\l\\1_\\l\\2/g<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>sc', ':s#_\\(\\l\\)#\\u\\1#g<CR>', { noremap = true })

-- Undo break points
vim.keymap.set('i', '<C-U>', '<C-G>u<C-U>', { noremap = true })

-- Date insertion
vim.keymap.set('n', '<Leader><Leader>d', '\"=strftime("%Y-%m-%d %A")<CR>Po', { noremap = true })

-- Motion (Hop as EasyMotion replacement)
vim.keymap.set('n', 'gs', function() require('hop').hint_char1() end, { noremap = true })

-- Session options
vim.opt.sessionoptions:remove('options')
vim.opt.sessionoptions:append({'unix', 'slash'})

