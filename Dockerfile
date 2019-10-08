ARG DEBIAN_FRONTEND=noninteractive

FROM ubuntu
MAINTAINER Steve Taylor

# Set environment variables.
ENV HOME /root
ENV TZ=America/Detroit

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install.
RUN apt-get update -y && \
 apt-get -y upgrade && \
 apt-get install -y build-essential && \
 apt-get install -y software-properties-common && \
 apt-get install -y tmux curl git htop man unzip vim-gtk wget

# Vim language completion
RUN apt-get install -y clang-tools-8 && \
 update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
 apt-get install nodejs

# TODO replace plug with Vim 8 native package manager
RUN curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Add files.
ADD ./terminal/dotfiles/* $HOME/
ADD . $HOME/Source/terminal-config/
ADD ./nvim/init.vim $HOME/.config/init.vim
#ADD ./compile_commands.json /code/

RUN vim +PlugInstall +qall

ADD ./vim/config/coc-settings.json $HOME/.vim/

RUN mkdir -p /home/user/.cache

# Define working directory.
WORKDIR /code

# Define default command.
CMD ["bash"]
