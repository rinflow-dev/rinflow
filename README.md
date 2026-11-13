<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="images/logo-dark.svg">
    <img src="images/logo.svg" width="80" alt="">
  </picture>
</p>

<h1 align="center">Rinflow</h1>

<p align="center">
  One keyboard and mouse for your Macs and Windows PCs.<br>
  Move the pointer past a screen edge, and it continues on the next device.
</p>

<p align="center">
  <b>English</b> · <a href="README.zh-CN.md">简体中文</a> · <a href="README.ja.md">日本語</a>
</p>

> [!NOTE]
> Rinflow is in early development. Keep every device on the latest version: different versions may not connect.

## Download

| Platform | Requirements | Download |
| --- | --- | --- |
| macOS | macOS 14 or later, Apple silicon or Intel | [Releases](https://github.com/rinflow-dev/rinflow-macos/releases/latest) |
| Windows | Windows 10 version 1809 or later, x64 or ARM64 | [Releases](https://github.com/rinflow-dev/rinflow-windows/releases/latest) |
| Linux | In development | |

[rinflow.com](https://rinflow.com/#download) picks the right file for your computer.

## Getting started

1. Install and start Rinflow on each computer, on the same local network. On a Mac, grant it the Accessibility permission.
2. Add the other computer, and check that both show the same six-digit code.
3. Drag it to the side of your screen where it sits.
4. Push the pointer past that edge. **Ctrl+Alt+Esc** (**⌃⌥Esc** on a Mac) brings it back.

## Features

- Control any connected computer from any other, in either direction
- Encrypted connections (TLS 1.3), with six-digit pairing
- Clipboard and file sharing, off by default
- English, Simplified Chinese and Japanese

## Feedback

Report bugs and request features in [Issues](https://github.com/rinflow-dev/rinflow/issues), whatever the platform. For security problems, see [SECURITY.md](SECURITY.md).

## Repositories

| Repository | Contents |
| --- | --- |
| [rinflow-macos](https://github.com/rinflow-dev/rinflow-macos) | macOS app (Swift) |
| [rinflow-windows](https://github.com/rinflow-dev/rinflow-windows) | Windows app (Rust, WinUI 3) |
| [rinflow-core](https://github.com/rinflow-dev/rinflow-core) | Shared Rust library: discovery, encrypted connections, input protocol |

Build instructions are in each repository. All are licensed under the [Mozilla Public License 2.0](https://www.mozilla.org/MPL/2.0/).
