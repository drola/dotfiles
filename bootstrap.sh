#1/bin/bash

sudo apt-get install git zsh curl
cd ~/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash


chsh -s /usr/bin/zsh
