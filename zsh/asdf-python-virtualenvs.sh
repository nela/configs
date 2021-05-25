# Script made for using the asdf as a virtual env manager for python projects
# Based on: https://github.com/asdf-vm/asdf/issues/636#issuecomment-674092994
#
# Note that a virtualenv (python -m pip install virtualenv) should be installed
# for each python version! Commands:
#   python -m pip install virtualenv
#   asdf reshim python

source $(brew --prefix)/Cellar/asdf/$(ls /usr/local/Cellar/asdf)/asdf.sh

export WORKON_HOME=$XDG_DATA_HOME/virtualenvs/nelaenvs
export PROJECT_HOME=$HOME/projects/python

mkenv() {
  virtualenv -p $(asdf where python "$1")/bin/python "$WORKON_HOME"/"$2"
}

workon() {
  source "$WORKON_HOME"/"$1"/bin/activate
  [ -d "$PROJECT_HOME"/"$1" ] && cd "$PROJECT_HOME"/"$1"
}

envdelete() {
  rm -rf "$WORKON_HOME"/"$1"
}
