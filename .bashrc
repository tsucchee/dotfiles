# pythonの仮想環境用の設定
  # virtualwrapper の読み込み
  source /usr/local/bin/virtualenvwrapper.sh

  # virtualenv のルートディレクトリにする場所
  # ここにpipでインストールしたパッケージが保存されます
  WORKON_HOME=$HOME/.virtualenvs

  # pipにパッケージをvirtualenv環境下にインストールする設定
  export PIP_RESPECT_VIRTUALENV=true

# alias for often using directory

if [ "$(uname)" = 'Darwin' ]; then
  alias ls='ls -AG'
else
  eval 'dircolors ~/.colorrc'
  alias ls='ls -A --color=auto'
fi

