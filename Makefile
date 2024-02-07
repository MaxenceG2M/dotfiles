TARGET   ?= ~
WSL_SOFT ?= $(shell uname -a | grep -i wsl > /dev/null && echo "keychain")

# Simulaton may reveal conflicts and block the installation.
# This is on purpose.
# Stow can "adopt" existing files, but this does not working correctly with stow < 2.4.0.
# It's retrieve a ".bashrc" file alongside a "dot-bashrc" intact-file.
# Since I don't do installation every day, I leave things as they are.
simulate:
	stow --dotfile --no-folding --ignore=custom-pages -vnSt $(TARGET) */
	stow --dotfile -vnSt $(TARGET) tldr
	@echo
	@echo Do make install do realize this operation

install: submodule init-folder
	stow --dotfile --no-folding --ignore=custom-pages -vSt $(TARGET) */
	stow --dotfile -vSt $(TARGET) tldr

uninstall:
	stow --dotfile -vDt $(TARGET) */

submodule:
	git submodule init
	git submodule update

init-folder: # Init needed folder to avoid bad symlink creation
	mkdir -p $(TARGET)/.local/share
	mkdir -p $(TARGET)/.config

basic-instal: # Install basic software and starship
	sudo apt update && sudo apt install make stow $(KEYCHAIN)
	curl -sS https://starship.rs/install.sh | sh
	bash <(curl https://raw.githubusercontent.com/atuinsh/atuin/main/install.sh)

git-hook:
	git config core.hooksPath .hook
