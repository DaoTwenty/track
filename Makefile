# --- Configuration ---
INSTALL_DIR ?= $(HOME)/.local/bin
SCRIPT_NAME = track
SCRIPT_PATH = $(CURDIR)/$(SCRIPT_NAME)
VERSION     := $(shell cat VERSION)
GIT_TAG     = v$(VERSION)

# --- Rules ---
.PHONY: install uninstall help tag version

install:
	@echo "Installing $(SCRIPT_NAME) v$(VERSION) to $(INSTALL_DIR)..."
	@mkdir -p "$(INSTALL_DIR)"
	@ls -l
	@sed "s/__VERSION__/$(VERSION)/" "$(SCRIPT_PATH)" > "$(INSTALL_DIR)/$(SCRIPT_NAME)"
	@chmod +x "$(INSTALL_DIR)/$(SCRIPT_NAME)"
	@echo "✅ Installed. Make sure $(INSTALL_DIR) is in your PATH."

uninstall:
	@echo "Uninstalling $(SCRIPT_NAME) from $(INSTALL_DIR)..."
	@rm -f "$(INSTALL_DIR)/$(SCRIPT_NAME)"
	@echo "✅ Uninstalled."

version:
	@echo "Current version: $(VERSION)"

tag:
	@git tag $(GIT_TAG)
	@git push origin $(GIT_TAG)
	@echo "✅ Git tag $(GIT_TAG) created and pushed."

help:
	@echo "Available targets:"
	@echo "  make install      Install script to $(INSTALL_DIR)"
	@echo "  make uninstall    Remove script from $(INSTALL_DIR)"
	@echo "  make version      Show current version"
	@echo "  make tag          Create and push Git tag 'v$(VERSION)'"
	@echo "  make help         Show this message"

