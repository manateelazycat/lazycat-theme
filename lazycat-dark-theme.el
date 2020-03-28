;;; lazycat-dark-theme.el --- My dark theme, for night use.

;; Filename: lazycat-dark-theme.el
;; Description: My dark theme, for night use.
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2020, Andy Stewart, all rights reserved.
;; Created: 2020-03-21 15:00:25
;; Version: 0.1
;; Last-Updated: 2020-03-21 15:00:25
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/lazycat-dark-theme.el
;; Keywords:
;; Compatibility: GNU Emacs 26.3
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; My dark theme, for night use.
;;

;;; Installation:
;;
;; Put lazycat-dark-theme.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'lazycat-dark-theme)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET lazycat-dark-theme RET
;;

;;; Change log:
;;
;; 2020/03/21
;;      * First released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require


;;; Code:

(require 'lazycat-theme)

(defgroup lazycat-dark-theme nil
  "Options for lazycat-themes"
  :group 'lazycat-themes)

(defcustom lazycat-dark-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'lazycat-dark-theme
  :type 'boolean)

(defcustom lazycat-dark-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'lazycat-dark-theme
  :type 'boolean)

(defcustom lazycat-dark-comment-bg lazycat-dark-brighter-comments
  "If non-nil, comments will have a subtle, darker background. Enhancing their
legibility."
  :group 'lazycat-dark-theme
  :type 'boolean)

(defcustom lazycat-dark-padded-modeline lazycat-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'lazycat-dark-theme
  :type '(choice integer boolean))

;;
(def-lazycat-theme lazycat-dark
  "A dark theme inspired by Atom One Dark"

  ;; name        default   256       16
  ((bg         '("#242525" nil       nil            ))
   (bg-alt     '("#333333" nil       nil            ))
   (base0      '("#1B2229" "black"   "black"        ))
   (base1      '("#1c1f24" "#1e1e1e" "brightblack"  ))
   (base2      '("#202328" "#2e2e2e" "brightblack"  ))
   (base3      '("#23272e" "#262626" "brightblack"  ))
   (base4      '("#3f444a" "#3f3f3f" "brightblack"  ))
   (base5      '("#5B6268" "#525252" "brightblack"  ))
   (base6      '("#73797e" "#6b6b6b" "brightblack"  ))
   (base7      '("#9ca0a4" "#979797" "brightblack"  ))
   (base8      '("#DFDFDF" "#dfdfdf" "white"        ))
   (fg         '("#00CE00" "#bfbfbf" "brightwhite"  ))
   (fg-alt     '("green4" "#2d2d2d" "white"        ))

   (grey       base4)
   (red        '("#ff6c6b" "#ff6655" "red"          ))
   (orange     '("#da8548" "#dd8844" "brightred"    ))
   (green      '("#98be65" "#99bb66" "green"        ))
   (teal       '("#4db5bd" "#44b9b1" "brightgreen"  ))
   (yellow     '("#ECBE7B" "#ECBE7B" "yellow"       ))
   (blue       '("#51afef" "#51afef" "brightblue"   ))
   (dark-blue  '("#2257A0" "#2257A0" "blue"         ))
   (magenta    '("#c678dd" "#c678dd" "brightmagenta"))
   (violet     '("#a9a1e1" "#a9a1e1" "magenta"      ))
   (cyan       '("#46D9FF" "#46D9FF" "brightcyan"   ))
   (dark-cyan  '("#5699AF" "#5699AF" "cyan"         ))

   ;; face categories -- required for all themes
   (highlight      "green")
   (vertical-bar   (lazycat-darken base1 0.1))
   (selection      dark-blue)
   (builtin        "#00b8ff")
   (comments       "#a7a7a7")
   (doc-comments   "#aaaaaa")
   (constants      "#bd00ff")
   (functions      "gold2")
   (keywords       "#004FFF")
   (methods        cyan)
   (operators      "cyan3")
   (type           "#00b8ff")
   (strings        "#DFD67A")
   (variables      "gold2")
   (numbers        orange)
   (region         "#3F90F7")
   (region-fg      "#FFF")
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (hidden     `(,(car bg) "black" "black"))
   (-modeline-bright lazycat-dark-brighter-modeline)
   (-modeline-pad
    (when lazycat-dark-padded-modeline
      (if (integerp lazycat-dark-padded-modeline) lazycat-dark-padded-modeline 4)))

   (modeline-fg     fg)
   (modeline-fg-alt base5)

   (modeline-bg
    (if -modeline-bright
        (lazycat-darken blue 0.475)
      `(,(lazycat-darken (car bg-alt) 0.15) ,@(cdr base0))))
   (modeline-bg-l
    (if -modeline-bright
        (lazycat-darken blue 0.45)
      `(,(lazycat-darken (car bg-alt) 0.1) ,@(cdr base0))))
   (modeline-bg-inactive   `(,(lazycat-darken (car bg-alt) 0.1) ,@(cdr bg-alt)))
   (modeline-bg-inactive-l `(,(car bg-alt) ,@(cdr base1))))


  ;; --- extra faces ------------------------
  ((elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")

   (evil-goggles-default-face :inherit 'region :background (lazycat-blend region bg 0.5))

   ((line-number &override) :foreground fg-alt :background bg)
   ((line-number-current-line &override) :foreground fg :background bg)

   (font-lock-comment-face
    :foreground comments
    :background (if lazycat-dark-comment-bg (lazycat-lighten bg 0.05)))
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments)

   (mode-line
    :background highlight :foreground highlight     :height 0.1
    :box nil)
   (mode-line-inactive
    :background bg :foreground bg    :height 0.1
    :box nil)
   (mode-line-emphasis
    :foreground (if -modeline-bright base8 highlight)
    :height 0.1)

   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))

   ;; Lazycat modeline
   (lazycat-modeline-bar :background (if -modeline-bright modeline-bg highlight))
   (lazycat-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (lazycat-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (lazycat-modeline-buffer-project-root :foreground green :weight 'bold)

   ;; ivy-mode
   (ivy-current-match :background dark-blue :distant-foreground base0 :weight 'normal)

   ;; --- major-mode faces -------------------
   ;; css-mode / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background (lazycat-lighten base3 0.05))

   ;; org-mode
   (org-hide :foreground hidden)
   (solaire-org-hide-face :foreground hidden))


  ;; --- extra variables ---------------------
  ())

(provide 'lazycat-dark-theme)

;;; lazycat-dark-theme.el ends here
