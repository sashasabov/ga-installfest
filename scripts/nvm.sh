#!/usr/bin/env bash
if [[ $# -eq 0 ]] ; then
  brew install nvm
  mkdir -p ~/.nvm

cat <<'EOF' >> ~/.bashrc

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

EOF

fi

if [[ $1 = "node" ]]; then
  . $(brew --prefix nvm)/nvm.sh
  nvm install --lts=boron || nvm install 6.11.2
  nvm alias default v6
fi

echo -e "\nRestart your terminal\n"
