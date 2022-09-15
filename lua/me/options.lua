local util = prequire("me.util")

util.apply_settings(vim.opt, {
  -- ***only*** use UTF-8 for character encoding
  encoding = "utf-8",
  -- line numbers
  number = true,
  relativenumber = true,
  -- 2 wide tabs made of spaces
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smarttab = true,
  autoindent = true,
  shiftround = true, -- round to shiftwidth
  -- mouse
  mouse = "a",
  -- background
  background = "dark",
  -- disable all backup functions except for undo files 
  -- set the correct directory for those
  swapfile = false,
  backup = false,
  writebackup = false,
  undodir = os.getenv("HOME") .. "/.cache/nvim/undoes",
  undofile = true,
  -- always add a signcolumn
  signcolumn = "yes",
  -- faster will make ui update quicker at the cost of performance
  updatetime = 200,
  -- colours
  termguicolors = true,
  -- search options
  hlsearch = false, -- disables highlight
  ignorecase = true, -- together with smartcase makes searches ignore casing except when a capital is present
  smartcase = true, -- ^^
  incsearch = true, -- show search results *while* the pattern is being typed out
  cmdheight = 1, -- make the command bar smoll
  -- cmp asked for these
  completeopt = {
    "menu",
    "menuone",
    "noselect",
  },
  conceallevel = 0,
  pumheight = 10,
  -- disable the current mode indicator, as the statusline handles that for us
  showmode = false,
  -- scroll down 8 items earlier
  scrolloff = 8,
  -- scroll to the side 8 items earlier
  sidescrolloff = 8,
  -- do not wrap lines for the love of god
  wrap = false,
  -- always display the statusline
  laststatus = 2,
  -- neovide font
  guifont = "JetBrainsMono Nerd Font:h11",
  -- highlight current line
  cursorline = true,
  clipboard = function(clip)
    -- makes vim immediate register correspond to the system clipboard and vise-versa
    clip:append("unnamedplus") 
  end,
  whichwrap = function(wrap)
    -- consider these jumpable when on different lines
    wrap:append("<,>,[,],h,l")
  end,
  iskeyword = function(keywords)
    -- make '-' separated words count as a singular word
    keywords:append("-")
  end,
})

util.apply_settings(vim.g, {
  neovide_transparency = 0.945
})
