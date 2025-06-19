#====================
AUTHOR         ?= The sacloud/ts-template Authors
COPYRIGHT_YEAR ?= 2025-
#====================

# 以下はts-templateを作るときに実行したコマンド群です。
# これらのコマンドによって生成されたテンプレートファイル群をベースに設定を追記したものが同梱されているので、
# 継承したリポジトリでこれらのコマンドを実行する必要はありません。

default: tools setup

.PHONY: tools
tools:
	@echo "Install packages for module development"
	npm install -g pnpm@latest-10
	pnpm add typescript vitest @types/node @biomejs/biome@1.9.4 tsx lefthook -D

.PHONY: setup
setup:
	@echo "Setup module files"
	pnpm init --init-type module
	pnpm tsc --init --module esnext --moduleResolution Bundler --target esnext --noEmit
	pnpx lefthook install
