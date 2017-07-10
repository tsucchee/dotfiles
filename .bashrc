# pythonの仮想環境用の設定
  # virtualwrapper の読み込み
  source /usr/local/bin/virtualenvwrapper.sh

  # virtualenv のルートディレクトリにする場所
  # ここにpipでインストールしたパッケージが保存されます
  WORKON_HOME=$HOME/.virtualenvs

  # pipにパッケージをvirtualenv環境下にインストールする設定
  export PIP_RESPECT_VIRTUALENV=true

# alias for often using directory

alias quantum='cd /Users/kengo/Documents/muratalab/myResearch/quantumChemistry/'