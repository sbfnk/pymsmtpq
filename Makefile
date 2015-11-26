# Generic Makefile for installing a single script.

SCRIPT=pymsmtpq
INSTALL_DIR=~/.local/bin
SCRIPT_PATH=$(realpath $(SCRIPT))

all:
	@echo "Usage:"
	@echo "make install - Install script in ~/.local/bin"
	@echo "make develop - Install symlink to script in ~/.local/bin"

install:
	cp $(SCRIPT) $(INSTALL_DIR)

develop:
	ln -s $(SCRIPT_PATH) $(INSTALL_DIR)/$(SCRIPT)
