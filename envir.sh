# zsh vim for ubuntu

sudo apt-get update
sudo apt-get install -y zsh vim git curl build-essential cmake
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
wget https://raw.githubusercontent.com/Tocknicsu/vim/master/.vimrc ~/.vimrc
wget https://raw.githubusercontent.com/Tocknicsu/vim/master/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install --clang-complete
sudo chsh -s /bin/zsh
