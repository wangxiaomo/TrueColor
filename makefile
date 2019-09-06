centos-preinstall:
	sudo yum install gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel

ubuntu-preinstall:
	sudo apt-get update; sudo apt-get install --no-install-recommends tmux fasd make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

tpm:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

pyenv:
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
	# Need at least one python to active virtualenv
	git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper

nvm:
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

setup: tpm
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
	cd `pwd`/vim/src
	./configure --with-features=huge --enable-multibyte --enable-python3interp --enable-pythoninterp
	make && sudo make install

manjaro:
	sudo pacman -Syu
	sudo pacman -S tmux vim zsh fasd chromium wqy-microhei wqy-zenhei wqy-microhei-lite ttf-arphic-ukai ttf-arphic-uming rdesktop net-tools expac
	# add content below to /etc/pacman.conf
	# [archlinuxcn]
	# SigLevel = Optional TrustedOnly
	# Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
	# then
	sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring
	sudo pacman -S fcitx-im fcitx-configtool fcitx-sogoupinyin
	sudo yaourt -S fcitx-qt4
	# add content below to ~/.xprofile
	# export GTK_IM_MODULE=fcitx
	# export QT_IM_MODULE=fcitx
	# export XMODIFIERS="@im=fcitx"
