centos-preinstall:
	sudo yum install -y zsh vim tmux git htop ncdu tig ack mlocate
	cd `pwd`/packages/fasd && sudo make install

ubuntu-preinstall:
	sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
			libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
			xz-utils tk-dev
	cd `pwd`/packages/fasd && sudo make install

manjaro-preinstall:
	sudo pacman -Syu
	sudo pacman -S vim tmux htop ncdu ack tig

pyenv:
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
	# Need at least one python to active virtualenv
	git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper

nvm:
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

setup:
	/bin/rm -rf ~/.tmux.conf ~/.vim ~/.vimrc ~/.zshrc
	ln -sf `pwd`/packages/tmux/tmux.conf ~/.tmux.conf
	ln -sf `pwd`/packages/vim ~/.vim
	ln -sf `pwd`/packages/vim/vimrc ~/.vimrc
	ln -sf `pwd`/packages/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/packages/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/packages/zsh/zsh_alias ~/.zsh_alias
	ln -sf `pwd`/packages/zsh/zsh_vhosts ~/.zsh_vhosts
	ln -sf `pwd`/packages/zsh/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
	ln -sf `pwd`/packages/zsh/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	ln -sf `pwd`/packages/zsh/zsh-syntax-highlighting ~/.zsh-syntax-highlighting
	ln -sf `pwd`/packages/fzf ~/.fzf
	ln -sf `pwd`/extra/ackrc ~/.ackrc
	ln -sf `pwd`/extra/gitconfig ~/.gitconfig
	ln -sf `pwd`/.env ~/.env

vim8:
	git clone https://github.com/vim/vim.git
	cd vim/src
	./configure --with-features=huge --enable-multibyte --enable-python3interp --enable-pythoninterp
	make && sudo make install
