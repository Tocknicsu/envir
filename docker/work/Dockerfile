FROM ubuntu:16.04
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8 
ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt -y update && apt -y upgrade
RUN apt -y install vim git zsh tmux python2.7 wget curl python3 python3-pip openssh-server postgresql nginx
### setting oh my zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
      && wget https://raw.githubusercontent.com/Tocknicsu/envir/master/.zshrc -O ~/.zshrc \
      && chsh -s /bin/zsh
RUN git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions \
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN wget https://raw.githubusercontent.com/Tocknicsu/envir/master/.vimrc -O ~/.vimrc
RUN git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
RUN vim +PluginInstall +q +q
RUN wget https://raw.githubusercontent.com/Tocknicsu/envir/master/init -O /root/.init.d 
VOLUME ["/root/workspace/"]
WORKDIR /root/workspace
ENTRYPOINT ["sh", "/root/.init.d"]
