# pythonの仮想環境用の設定

  #virtualenvwrapperの変数設定
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME

  if [ "$(uname)" == 'Darwin' ]; then
  export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
  elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
  fi

 # export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/lib/python3.6/site-packages
  # export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

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


# nodebrew の PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/Applications/FontForge.app/Contents/MacOS:$PATH

alias bhi-py='cd ~/BHI/swetc/crawl/newscrawl/newscrawl/spiders/'
alias bhi-sh='cd ~/BHI/swetc/crawl/newscrawl/'
