if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  " Override filetypes for certain files
  autocmd! BufNewFile,BufRead *.frag setfiletype glsl
  autocmd! BufNewFile,BufRead *.vert setfiletype glsl
augroup END
