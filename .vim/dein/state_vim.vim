if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kengo/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kengo/.vim/dein'
let g:dein#_runtime_path = '/Users/kengo/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kengo/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/kengo/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kengo/.vim,/Users/kengo/.vim/dein/.cache/.vimrc/.dein,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim80,/Users/kengo/.vim/dein/.cache/.vimrc/.dein/after,/usr/local/share/vim/vimfiles/after,/Users/kengo/.vim/after'
