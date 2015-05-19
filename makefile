setup:
	/bin/rm -rf ~/.tmux.conf ~/.vim ~/.vimrc ~/.zshrc
	ln -s `pwd`/packages/tmux/tmux.conf ~/.tmux.conf
	ln -s `pwd`/packages/vim ~/.vim
	ln -s `pwd`/packages/vim/vimrc ~/.vimrc
	ln -s `pwd`/packages/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -s `pwd`/packages/zsh/zshrc ~/.zshrc
	ln -s `pwd`/packages/zsh/zsh_alias ~/.zsh_alias
	ln -s `pwd`/packages/zsh/zsh_vhosts ~/.zsh_vhosts
	ln -s `pwd`/packages/zsh/zsh-completions ~/.zsh-completions
	ln -sf `pwd`/extra/ackrc ~/.ackrc
	ln -sf `pwd`/extra/gitconfig ~/.gitconfig
