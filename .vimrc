if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

"-------------------------------------------------------------------------
" エンコーディング関係
" ------------------------------------------------------------------------
  set encoding=utf-8 " ファイル読み込み時の文字コードの設定
  scriptencoding utf-8 " Vim script内でマルチバイト文字を使う場合の設定
  
  set fileencoding=utf-8 " 保存時の文字コード
  set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別.  左側が優先される
  set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先
  set ambiwidth=double " ⬜︎や◯文字が崩れる問題を解決


"--------------------------------------------------------------------------
" dein.vimの設定
" -------------------------------------------------------------------------

  let s:dein_dir = expand('~/.vim/dein')
  let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
  
  if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir)) 
  endif
  let &runtimepath = s:dein_repo_dir . "," . &runtimepath


  call dein#begin(s:dein_dir)

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('justmao945/vim-clang')

  " colorscheme plugin 
  call dein#add('AlessandroYorba/Alduin')
  call dein#add('romainl/Apprentice')
  call dein#add('jacoborus/tender.vim')
  call dein#add('jeetsukumaran/vim-nefertiti')
  call dein#add('w0ng/vim-hybrid')


  call dein#end()
  colorscheme Apprentice 

  call dein#save_state()

  if dein#check_install()
    call dein#install()
  endif
  
 " let g:hybrid_use_iTerm_colors = 1
 " colorscheme Apprentice

  filetype plugin indent on
  syntax enable 


"-------------------------------------------------------------------------
" neocompleteの設定
" ------------------------------------------------------------------------
  let g:neocomplete#enable_at_startup = 1 " 起動時に有効
  let g:neocomplete#max_list = 50 " ポップアップメニューで表示される候補の数
  let g:neocomplete#max_keyword_width = 80 " キーワードの長さ
  let g:neocomplete#enable_ignore_case = 1
  inoremap <expr><CR> pumvisible() ? neocomplete#close_popup() : "<CR>"

  
  
"--------------------------------------------------------------------------
" タブ・インデント
" ------------------------------------------------------------------------
  set expandtab " タブ入力を複数の空白入力に
  set tabstop=2 " 画面上でタブ文字が占める幅
  set softtabstop=2 " 連続した空白に対してタブキーやバックスペースでカーソルが動く幅
  set autoindent " 改行時に前の行のインデントを継続する
  set smartindent " 改行時に前の行の構文をチェックして次の行のインデントを増減
  set shiftwidth=2 " smartindentで増減する幅

"--------------------------------------------------------------------------
"　文字列検索
""-------------------------------------------------------------------------
  set incsearch " インクリメンタルサーチ. 一文字入力ごとに検索を行う
  set ignorecase " 検索パターンに大文字小文字を区別しない
  set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
  set hlsearch " 検索結果をハイライト
  nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR> " ESC2度押しでハイライトの切り替え

"--------------------------------------------------------------------------
" カーソル
" -------------------------------------------------------------------------
  set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行末から次の行等への移動が可能になる
  set number " 行番号を表示
  set cursorline " カーソルラインをハイライト
  
  " 行が折り返し表示されていた場合,行単位ではなく表示行単位でカーソルを移動する
  nnoremap j gj
  nnoremap k gk
  nnoremap <down> gj
  nnoremap <up> gk
  inoremap jj <Esc>

  set backspace=indent,eol,start

" かっこ・タグジャンプ
  set showmatch " かっこの対応関係を一瞬表示する
  source $VIMRUNTIME/macros/matchit.vim " vim の「%」を拡張

" vimコマンド補完・保管
  set wildmenu " コマンドモードの補完
  set history=5000 " 保存するコマンド履歴の数

" マウスの設定
  if has('mouse')
    set mouse=a
    if has('mouse_sgr')
      set ttymouse=sgr
    elseif v:version > 703 || v:virsion is 703 && has('patch632')
      set ttymouse=sgr
    else  
      set ttymouse=xterm2
    endif
  endif

" ペースト設定
  if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_SE .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
      set paste
      return a:ret
    endfunction

    inoremap <special><expr><Esc>[200~ XTermPasteBegin("")
  endif

" plugin 設定
