<h1 align="center"><code>bui.kak</code></h1>
<p align="center">Kakoune colorscheme that <i>SuperB</i></p>
<p align="center"><img src="https://img.shields.io/github/license/NNBnh/bui.kak?labelColor=181818&color=585858&style=for-the-badge" alt="License: GPL-3.0"> <img src="https://img.shields.io/github/last-commit/NNBnh/bui.kak?labelColor=181818&color=585858&style=for-the-badge">
<p align="center"><img src="https://img.shields.io/github/watchers/NNBnh/bui.kak?labelColor=181818&color=585858&style=flat-square"> <img src="https://img.shields.io/github/stars/NNBnh/bui.kak?labelColor=181818&color=585858&style=flat-square"> <img src="https://img.shields.io/github/forks/NNBnh/bui.kak?labelColor=181818&color=585858&style=flat-square"> <img src="https://img.shields.io/github/issues/NNBnh/bui.kak?labelColor=181818&color=585858&style=flat-square">

## About
`bui.kak` is a Kakoune color scheme that uses [BUI environment variables](https://github.com/NNBnh/dots/wiki/bui). If the [BUI elements color](https://github.com/NNBnh/dots/wiki/bui#elements) matches the [BUI terminal color](https://github.com/NNBnh/dots/wiki/bui#terminal), it will use the native terminal color instate.

## Contents
- [About](#about)
- [Contents](#contents)
- [Installation](#installation)

## Installation
- With [`plug.kak`](https://github.com/robertmeta/plug.kak) just put this in your `kakrc`:

```
plug "NNBnh/bui.kak" theme config %{
	colorscheme bui
}
```