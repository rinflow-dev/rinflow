<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="images/logo-dark.svg">
    <img src="images/logo.svg" width="80" alt="">
  </picture>
</p>

<h1 align="center">Rinflow</h1>

<p align="center">
  一套键盘鼠标，控制你的 Mac 和 Windows 电脑。<br>
  指针移过屏幕边缘，就到了下一台设备上。
</p>

<p align="center">
  <a href="README.md">English</a> · <b>简体中文</b> · <a href="README.ja.md">日本語</a>
</p>

> [!NOTE]
> Rinflow 处于早期开发阶段。请让所有设备都使用最新版本，不同版本之间可能无法连接。

## 下载

| 平台 | 系统要求 | 下载 |
| --- | --- | --- |
| macOS | macOS 14 或更高版本，Apple 芯片或 Intel | [Releases](https://github.com/rinflow-dev/rinflow-macos/releases/latest) |
| Windows | Windows 10 1809 或更高版本，x64 或 ARM64 | [Releases](https://github.com/rinflow-dev/rinflow-windows/releases/latest) |
| Linux | 开发中 | |

也可以在 [rinflow.com](https://rinflow.com/zh/#download) 下载，网站会自动选择适合你电脑的文件。

## 开始使用

1. 在每台电脑上安装并打开 Rinflow，并连接到同一个局域网。Mac 上需要授予"辅助功能"权限。
2. 添加另一台电脑，确认两边显示的六位数字相同。
3. 把它拖到屏幕上对应的那一侧。
4. 把指针推过那条边。按 **Ctrl+Alt+Esc**（Mac 上是 **⌃⌥Esc**）可以收回控制。

## 功能

- 任意一台已连接的电脑都能控制其他电脑，方向不限
- 加密连接（TLS 1.3），用六位数字配对
- 剪贴板和文件共享，默认关闭
- 支持英文、简体中文和日文界面

## 反馈

无论哪个平台，问题和建议都请提交到 [Issues](https://github.com/rinflow-dev/rinflow/issues)。安全问题请参阅 [SECURITY.md](SECURITY.md)。

## 仓库

| 仓库 | 内容 |
| --- | --- |
| [rinflow-macos](https://github.com/rinflow-dev/rinflow-macos) | macOS 应用（Swift） |
| [rinflow-windows](https://github.com/rinflow-dev/rinflow-windows) | Windows 应用（Rust、WinUI 3） |
| [rinflow-core](https://github.com/rinflow-dev/rinflow-core) | 共用的 Rust 库：设备发现、加密连接、输入协议 |

构建方法见各仓库。所有仓库均采用 [Mozilla Public License 2.0](https://www.mozilla.org/MPL/2.0/) 许可。
