TARGET ?= ~

simulate:
	stow --dotfile -vnSt $(TARGET) */
	@echo
	@echo Do make init do realize this operation

install:
	stow --dotfile -vSt $(TARGET) */

uninstall:
	stow --dotfile -vDt $(TARGET) */
