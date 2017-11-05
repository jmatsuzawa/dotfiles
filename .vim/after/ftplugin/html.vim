if exists("b:did_ftplugin_html")
  finish
endif
let b:did_ftplugin_html = 1

source ${HOME}/.vim/after/ftplugin/xml.vim
