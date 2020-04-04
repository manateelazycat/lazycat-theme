<img src="./dark-screenshot.png">
<img src="./light-screenshot.png">

## LazyCat's Emacs Theme
lazycat-theme is my theme package, code base fork from doom-theme and disable mode-line default (see also [awesome-tray](https://github.com/manateelazycat/awesome-tray))

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

#### Load theme

Switch to dark theme:
```elisp
(lazycat-theme-load-dark)
```

Switch to light theme:

```elisp
(lazycat-theme-load-light)
```

#### Toggle theme

```elisp
(lazycat-theme-toggle)
```

#### Load theme with current time

```elisp
(lazycat-theme-load)
```

#### Check the time every hour then adjusted theme with sunrise

```elisp
(lazycat-theme-load-with-sunrise)
```
