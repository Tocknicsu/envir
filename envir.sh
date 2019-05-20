# zsh vim for ubuntu

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y zsh vim git curl python3 python3-pip
# install zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
wget https://raw.githubusercontent.com/Tocknicsu/envir/master/.zshrc -O ~/.zshrc
sduo chsh $USER -s `which zsh`

# install vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
wget https://raw.githubusercontent.com/Tocknicsu/envir/master/.vimrc -O ~/.vimrc
vim +PluginInstall +qall

# migrate vim and git
git config --global core.editor "vim"

# set git password cache
git config credential.helper cache
git config credential.helper 'cache --timeout=300'

# install docker
curl -sSL https://get.docker.com/ | sudo sh
sudo pip3 install docker-compose
sudo usermod -aG docker $USER

