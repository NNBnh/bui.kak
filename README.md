<h1 align="center"><code>bui.kak</code></h1>
<p align="center">BUI for Kakoune</p>
<p align="center"><a href="https://github.com/NNBnh/bui.kak/blob/master/LICENSE"><img src="https://img.shields.io/github/license/NNBnh/bui.kak?labelColor=585858&color=F7CA88&style=for-the-badge" alt="License: GPL-3.0"></a> <img src="https://img.shields.io/github/last-commit/NNBnh/bui.kak?labelColor=585858&color=F7CA88&style=for-the-badge"></p>
<p align="center"><a href="https://github.com/NNBnh/bui.kak/watchers"><img src="https://img.shields.io/github/watchers/NNBnh/bui.kak?labelColor=585858&color=F7CA88&style=flat-square"></a> <a href="https://github.com/NNBnh/bui.kak/stargazers"><img src="https://img.shields.io/github/stars/NNBnh/bui.kak?labelColor=585858&color=F7CA88&style=flat-square"></a> <a href="https://github.com/NNBnh/bui.kak/network/members"><img src="https://img.shields.io/github/forks/NNBnh/bui.kak?labelColor=585858&color=F7CA88&style=flat-square"></a> <a href="https://github.com/NNBnh/bui.kak/issues"><img src="https://img.shields.io/github/issues/NNBnh/bui.kak?labelColor=585858&color=F7CA88&style=flat-square"></a></p>

## About
`bui.kak` is a [Kakoune](http://kakoune.org) color scheme that uses [BUI environment variables](https://github.com/NNBnh/dots/wiki/bui). If the [BUI elements color](https://github.com/NNBnh/dots/wiki/bui#elements) matches the [BUI terminal color](https://github.com/NNBnh/dots/wiki/bui#terminal), it will use the native terminal color instate.

## Contents
- [About](#about)
- [Contents](#contents)
- [Installation](#installation)

## Installation
With [`plug.kak`](https://github.com/robertmeta/plug.kak) just put this in your `kakrc`:

```
plug "NNBnh/bui.kak" theme config %{
	declare-option str-list bui_cursor_information 'true' # Put this here if you want to use cursor color for information

	colorscheme bui
}
```

<br><br><br><br>

---

> <h1 align="center">Made with ❤️ by <a href="https://github.com/NNBnh"><i>NNB</i></a></h1>
>
> <p align="center"><a href="https://www.buymeacoffee.com/nnbnh"><img src="https://img.shields.io/badge/buy_me_a_coffee%20-%23F7CA88.svg?logo=buy-me-a-coffee&logoColor=333333&style=for-the-badge" alt="Buy Me a Coffee"></p>
