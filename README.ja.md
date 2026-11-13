<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="images/logo-dark.svg">
    <img src="images/logo.svg" width="80" alt="">
  </picture>
</p>

<h1 align="center">Rinflow</h1>

<p align="center">
  1 組のキーボードとマウスで、Mac と Windows PC を操作できます。<br>
  ポインターを画面の端の先へ動かすと、次のデバイスに移ります。
</p>

<p align="center">
  <a href="README.md">English</a> · <a href="README.zh-CN.md">简体中文</a> · <b>日本語</b>
</p>

> [!NOTE]
> Rinflow は開発初期の段階です。すべてのデバイスで最新バージョンをお使いください。バージョンが異なると接続できない場合があります。

## ダウンロード

| プラットフォーム | 動作環境 | ダウンロード |
| --- | --- | --- |
| macOS | macOS 14 以降、Apple シリコンまたは Intel | [Releases](https://github.com/rinflow-dev/rinflow-macos/releases/latest) |
| Windows | Windows 10 バージョン 1809 以降、x64 または ARM64 | [Releases](https://github.com/rinflow-dev/rinflow-windows/releases/latest) |
| Linux | 開発中 | |

[rinflow.com](https://rinflow.com/ja/#download) では、お使いのコンピューターに合ったファイルが自動で選ばれます。

## はじめに

1. 同じローカル ネットワーク上の各コンピューターに Rinflow をインストールして起動します。Mac では「アクセシビリティ」の許可が必要です。
2. もう一方のコンピューターを追加し、両方に同じ 6 桁のコードが表示されていることを確認します。
3. そのコンピューターを、実際に置いてある側の画面の端へドラッグします。
4. ポインターをその端の先へ動かします。**Ctrl+Alt+Esc**（Mac では **⌃⌥Esc**）で操作を戻せます。

## 機能

- 接続したどのコンピューターからでも、ほかのコンピューターを操作できます（向きは問いません）
- 暗号化された接続（TLS 1.3）と 6 桁のコードによるペアリング
- クリップボードとファイルの共有（既定ではオフ）
- 英語、簡体字中国語、日本語に対応

## フィードバック

プラットフォームを問わず、不具合の報告や機能のリクエストは [Issues](https://github.com/rinflow-dev/rinflow/issues) へお寄せください。セキュリティの問題については [SECURITY.md](SECURITY.md) をご覧ください。

## リポジトリ

| リポジトリ | 内容 |
| --- | --- |
| [rinflow-macos](https://github.com/rinflow-dev/rinflow-macos) | macOS アプリ（Swift） |
| [rinflow-windows](https://github.com/rinflow-dev/rinflow-windows) | Windows アプリ（Rust、WinUI 3） |
| [rinflow-core](https://github.com/rinflow-dev/rinflow-core) | 共通の Rust ライブラリ：デバイスの検出、暗号化接続、入力プロトコル |

ビルド方法は各リポジトリをご覧ください。いずれも [Mozilla Public License 2.0](https://www.mozilla.org/MPL/2.0/) で公開しています。
