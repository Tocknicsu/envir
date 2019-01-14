# Make your zsh more powerful

    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    #modify your zshrc
    plugins=( [plugins...] zsh-syntax-highlighting zsh-autosuggestions)
