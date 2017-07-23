# pythonの仮想環境用の設定

  #virtualenvwrapperの変数設定
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME
  export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
  export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
  export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

  # virtualwrapper の読み込み
  source /usr/local/bin/virtualenvwrapper.sh

  # virtualenv のルートディレクトリにする場所
  # ここにpipでインストールしたパッケージが保存されます

  # pipにパッケージをvirtualenv環境下にインストールする設定
  export PIP_RESPECT_VIRTUALENV=true

  # pip の一括アップデート
  alias pip-update='pip list --outdated --format=legacy | awk '\''{print $1}'\'' | xargs pip install -U'

if [ "$(uname)" = 'Darwin' ]; then
  alias ls='ls -AG'
else
  eval 'dircolors ~/.colorrc'
  alias ls='ls -A --color=auto'
fi

