.PHONY: install uninstall help

# デフォルトターゲット
help:
	@echo "Claude Code Configuration Management"
	@echo ""
	@echo "Available targets:"
	@echo "  install   - Install Claude Code configuration files to ~/.claude/"
	@echo "  uninstall - Remove Claude Code configuration files from ~/.claude/"
	@echo "  help      - Show this help message"

# Claude Code設定をホームディレクトリにインストール
install:
	@echo "Installing Claude Code configuration..."
	@mkdir -p ~/.claude
	@cp CLAUDE.md ~/.claude/
	@echo "Configuration installed successfully to ~/.claude/"

# 設定ファイルをアンインストール
uninstall:
	@echo "Uninstalling Claude Code configuration..."
	@rm -f ~/.claude/CLAUDE.md
	@if [ -d ~/.claude ] && [ -z "$$(ls -A ~/.claude)" ]; then rmdir ~/.claude; fi
	@echo "Configuration uninstalled successfully"