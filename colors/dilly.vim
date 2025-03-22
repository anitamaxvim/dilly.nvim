if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "dilly"

lua require("dilly").setup()
