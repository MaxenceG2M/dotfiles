dotfiles
========

Run these commands :

    cd
    git clone git@github.com:MaxenceG2M/dotfiles.git
    ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
    ln -s ~/dotfiles/bash_logout ~/.bash_logout
    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/emacs ~/.emacs
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
    ln -s ~/dotfiles/global-gitignore ~/.gitignore
    ln -s ~/dotfiles/inputrc ~/.inputrc
    ln -s ~/dotfiles/ls_colors ~/.ls_colors
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/zsh_aliases ~/.zsh_aliases
    ln -s ~/dotfiles/zshrc ~/.zshrc
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/profile ~/.profile
    ln -s ~/dotfiles/starship.toml ~/.config/starship.toml
    ln -s ~/dotfiles/fzf_custom ~/.fzf_custom

Change default bash :

    chsh

Restore Page down do tild :
edit [path]/.oh-my-zsh/lib/key-bindings.zsh and comment part for Page Down key

Thanks to PingTimeout :-)

# Tools used
* fzf
    * https://github.com/junegunn/fzf
    * ==> See readme
    * fzf bash is linked to profile name, so I can't put it in the dotfile repo
* forgit
    * https://github.com/wfxr/forgit
    * git clone https://github.com/wfxr/forgit.git ~/Software/forgit
    * ln -s ~/Software/z/z.sh ~/.z.sh
* z
    * https://github.com/rupa/z
    * git clone https://github.com/rupa/z.git ~/Software/z
    * ln -s ~/Software/z/z.sh ~/.z.sh
* ghq
    * https://github.com/x-motemen/ghq
