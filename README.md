# Claude Code Configuration

Claude Codeの設定ファイルを管理するためのリポジトリです。

## 概要

このリポジトリにはClaude Codeで使用する設定ファイル（CLAUDE.md）が含まれており、Makefileを使って簡単にインストール・アンインストールができます。

## ファイル構成

- `CLAUDE.md` - Claude Codeの設定ファイル（言語設定等）
- `Makefile` - 設定ファイルの管理用Makefile

## 使用方法

### インストール

```bash
make install
```

設定ファイルを `~/.claude/` ディレクトリにインストールします。

### アンインストール

```bash
make uninstall
```

インストールした設定ファイルを削除します。

### ヘルプ

```bash
make help
```

利用可能なコマンドを表示します。

## 設定内容

現在の設定では以下が有効になっています：

- デフォルト応答言語: 日本語
- 明示的に指定されない限り、常に日本語で応答