# sacloud/ts-template

さくらのクラウド向けOSSプロダクトでのプロジェクトテンプレート(TypeScript)

## 概要

さくらのクラウド向けOSSプロダクトでTypeScriptを用いるプロジェクトのためのテンプレート

さくらのクラウドでのTypeScriptプロダクトでは以下のツール群を中心に開発します。

- pnpm: パッケージマネージャ
- biome: linter & formatter
- vitest: テスト
- lefthook: githook manager

## 使い方

GitHubでリポジトリを作成する際にテンプレートとしてsacloud/ts-templateを選択して作成します。 

次に`ts-template`という文字列を自身のプロジェクトのものに置き換えてください。

例: exampleという名前のプロジェクトを作成する場合

```bash
# 作成したプロジェクトのディレクトリに移動
cd example
# 置き換え
find . -type f | xargs sed -i '' -e "s/ts-template/example/g"
```

## TODO

- パッケージのPublish周りも構築する

## License

`ts-template` Copyright (C) 2025- The sacloud/ts-template authors.
This project is published under [Apache 2.0 License](LICENSE).