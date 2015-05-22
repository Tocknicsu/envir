git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
wget https://raw.githubusercontent.com/Tocknicsu/vim/master/.vimrc -O ~/.vimrc
wget https://raw.githubusercontent.com/Tocknicsu/vim/master/.ycm_extra_conf.py -O ~/.vim/.ycm_extra_conf.py
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-complete
