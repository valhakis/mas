if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect

  " au! commands to set the filetype go here
  au! BufNewFile,BufRead motizium setf motizium
  au! BufNewFile,BufRead virtualhost.conf call SetOptions()

  function SetOptions()
    setf html
    setlocal syntax=apache
  endfunction
augroup END
