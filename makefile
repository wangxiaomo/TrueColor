setup:
	/bin/rm -rf ~/.tmux.conf ~/.vim ~/.vimrc ~/.zshrc
	ln -sf `pwd`/packages/tmux/tmux.conf ~/.tmux.conf
	ln -sf `pwd`/packages/vim ~/.vim
	ln -sf `pwd`/packages/vim/vimrc ~/.vimrc
	ln -sf `pwd`/packages/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/packages/zsh/z ~/.z-jump
	ln -sf `pwd`/packages/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/packages/zsh/zsh_alias ~/.zsh_alias
	ln -sf `pwd`/packages/zsh/zsh_vhosts ~/.zsh_vhosts
	ln -sf `pwd`/packages/zsh/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
	ln -sf `pwd`/extra/ackrc ~/.ackrc
	ln -sf `pwd`/extra/gitconfig ~/.gitconfig
	ln -sf `pwd`/.env ~/.env

	mkdir -p ~/.config/nvim
	ln -sf `pwd`/packages/vim/vimrc ~/.config/nvim/init.vim
