<img src="./screenshot.png">

## LazyCat's Emacs Theme
lazycat-theme is my theme package, include two themes: ```lazycat-dark``` and ```lazycat-light```

lazycat-theme is fork from doom-theme and disable mode-line default (see also [awesome-tray](https://github.com/manateelazycat/awesome-tray))

### Installation

1. Clone this repository

```
git clone --depth=1 https://github.com/manateelazycat/lazycat-theme.git
```

2. Move lazycat-theme to your load-path.

    The load-path is usually `~/elisp/`.

    It's set in your `~/.emacs` or `~/.emacs.d/init.el` like this:

```elisp
(add-to-list 'load-path (expand-file-name "~/elisp"))
(require 'lazycat-theme)
```

### Usage

```elisp
(load-theme 'lazycat-dark t)
```

or

```elisp
(load-theme 'lazycat-light t)
```
