TARGET ?= ~

simulate:
	stow --dotfile -vnSt $(TARGET) */
	@echo
	@echo Do make install do realize this operation

install: submodule init-folder
	stow --dotfile -vSt $(TARGET) */

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
