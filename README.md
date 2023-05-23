dotfiles
========

## Setup

These repo use a Stow management method.

See [this video](https://www.youtube.com/watch?v=CFzEuBGPPPg) for a complete intro/tuto.

To init a new machine, just do:

```sh
$ make simulate #Ensure everything is correct and not a file already exist
$ make install
```

Target could be overided with `make install TARGET=<target_path>`

### tldr custom pages

This repo have a disabled submodule for custom tldr pages.
The idea is to have this dependancy to make links for tealdeer and in home.
I want to edit tldr custom pages in a totally separate workflow, so the submodule is disabled and live his life separatly.

For a fresh clone, do:

```sh
git submodule init
git submodule update
```

## Other informations

Change default bash :

    chsh

Restore Page down do tild :
edit [path]/.oh-my-zsh/lib/key-bindings.zsh and comment part for Page Down key

Thanks to PingTimeout to introduce me the dotfiles concept :-)

## Tools used

* fzf
    * https://github.com/junegunn/fzf
    * ==> See readme
    * fzf bash is linked to profile name, so I can't put it in the dotfile repo
* ghq
    * https://github.com/x-motemen/ghq
* delta
    * https://github.com/dandavison/delta
* bat
    * https://github.com/sharkdp/bat
* exa
    * https://github.com/ogham/exa/
* rg (ripgrep)
    * https://github.com/BurntSushi/ripgrep
* tldr (tealdeer)
    * https://github.com/dbrgn/tealdeer (rust implementation)
* z
    * https://github.com/rupa/z
    * git clone https://github.com/rupa/z.git ~/Software/z
    * ln -s ~/Software/z/z.sh ~/.z.sh
* forgit
    * https://github.com/wfxr/forgit
    * git clone https://github.com/wfxr/forgit.git ~/Software/forgit
    * ln -s ~/Software/z/z.sh ~/.z.sh
