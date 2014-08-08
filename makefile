setup:
	/bin/rm -rf ~/.tmux.conf ~/.vim ~/.vimrc ~/.zshrc ~/.incr.zsh
	ln -s `pwd`/packages/tmux/tmux.conf ~/.tmux.conf
	ln -s `pwd`/packages/vim ~/.vim
	ln -s `pwd`/packages/vim/vimrc ~/.vimrc
	ln -s `pwd`/packages/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -s `pwd`/packages/zsh/incr.zsh ~/.incr.zsh
	ln -s `pwd`/packages/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/extra/ackrc ~/.ackrc
	ln -sf `pwd`/extra/gitconfig ~/.gitconfig
