# zsh vim for ubuntu

sudo apt-get update
sudo apt-get install -y zsh vim git curl build-essential cmake python-dev
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
wget https://raw.githubusercontent.com/Tocknicsu/envir/master/.vimrc -O ~/.vimrc
wget https://raw.githubusercontent.com/Tocknicsu/envir/master/.ycm_extra_conf.py -O ~/.vim/.ycm_extra_conf.py
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-complete
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
sudo chsh -s /usr/bin/zsh
source ~/.zshrc
