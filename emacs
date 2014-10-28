;; .emacs
;; ============================== Basic Configure START =====================================
;; set TAB=4 for C
;;(setq c-basic-offset 4)
;;
;; show colume number
;;(setq column-number-mode t)

;; kill the buffer imediate
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;; hide tool bar
(tool-bar-mode -1)

;; hide menu bar
(menu-bar-mode -1)

;;hide scroll bar
(scroll-bar-mode -1)

;;Move line by text line
(setq line-move-visual nil)
;;
(setq use-dialog-box nil)

;;不要在鼠标点击的那个地方插入剪贴板内容。我不喜欢那样，经常把我的文档搞的一团糟。我觉得先用光标定位，然后鼠标
(setq mouse-yank-at-point t)

;;让 Emacs 可以直接打开和显示图片。
(setq auto-image-file-mode t)

;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码
(add-hook 'comint-output-filter-functions
      'comint-watch-for-password-prompt)

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;;使用鼠标中键可以粘贴
(setq mouse-yank-at-point t)

;;设置有用的个人信息,这在很多地方有用。
(setq user-full-name "lkong")
(setq user-mail-address "lkong@redhat.com")

;; 自动的在文件末增加一新行
(setq require-final-newline t)

;;设置F9快捷键指定Emacs 的日历系统
(global-set-key [f9] 'calendar)

;;设置F10 快速察看日程安排
(global-set-key [f10] 'list-bookmarks)

;;让 dired 可以递归的拷贝和删除目录。
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;;设置[C-f9]为调用dired命令
;;(global-set-key [C-f9] 'dired)

;;取消control+space键设为mark
(global-set-key (kbd "C-SPC") 'nil)

;;这样 我就不用按 C-@ 来 setmark 了, C-@ 很不好按。
;;(global-set-key (kbd "M-<SPC>") 'set-mark-command)
(global-set-key [?\S- ] 'set-mark-command)

;; 设置备份目录。
(setq backup-directory-alist '(("." . "~/emacs_backup")))

;; 不备份文件，不推荐
;;(setq make-backup-files nil)

;; 设置光标为竖线
(setq-default cursor-type 'box)
;; 设置光标为方块
;; (setq-default cursor-type 'box)

;; 关闭起动时的那个“开机画面”
(setq inhibit-startup-message t)

;; 加亮选中部分
(transient-mark-mode t)

;; 滚轮支持
(setq mouse-wheel-mode t)

;; 显示列号
(setq column-number-mode t)
;; 显示行号
(global-linum-mode 1)


;; 用一个很大的 kill ring
(setq kill-ring-max 200)

;; 把 fill-column 设为 60. 这样的文字更好读
(setq default-fill-column 60)

;; 括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号
;;(show-paren-mode t)
;;(setq show-paren-style 'parentheses)

;; 在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示
(setq frame-title-format "emacs@%b")

;; 把这些缺省禁用的功能打开
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)
;; 让 dired 可以递归的拷贝和删除目录
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;; auto enter new line
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; set key f11 to switch to full
(global-set-key [f11] 'my-fullscreen) ;; full screen

(fset 'yes-or-no-p'y-or-n-p)

;; statment highlight
(global-font-lock-mode t)

;; use a large kill ring
(setq kill-ring-max 1024)

;; Show the corse in which function
(which-function-mode t)

;; set default tab width
(setq default-tab-width 4)

;; use space to instead TAB
(setq-default indent-tabs-mode nil)

;; enable global line number
;;(global-linum-mode 1)

;;设置M-g为goto-line
(global-set-key (kbd "M-g") 'goto-line)

;; No backup
;;(setq backup-inhibited t)

;; set color theme
(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-20080305.34/")
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-dark-laptop)
;;(color-theme-kingsajz)
;;(load-file "~/.emacs.d/plugins/color-theme-wombat+.el")
;;(color-theme-wombat+)

;;(load-file "~/.emacs.d/plugins/color-theme-active.el")
;;(color-theme-active)
(load-file "~/.emacs.d/plugins/color-theme-colorful-obsolescence.el")
(color-theme-colorful-obsolescence)


(defun my-fullscreen ()
(interactive)
(x-send-client-message
  nil 0 nil "_NET_WM_STATE" 32
  '(2 "_NET_WM_STATE_FULLSCREEN" 0))
)
;; let emacs to max frame
(add-to-list 'load-path "~/.emacs.d/elpa/maxframe-20120725.639/")
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

;;#yum install wqy-microhei-fonts.noarch first
;;(set-default-font "WenQuanYi Micro Hei Mono-19.5")
(set-default-font "WenQuanYi Zen Hei Mono-22")
;;(set-fontset-font (frame-parameter nil 'font) 'han      "WenQuanYi Zen Hei Mono-24")
;;(set-fontset-font (frame-parameter nil 'font) 'gb18030  "WenQuanYi Zen Hei Mono-24")
;;(set-fontset-font (frame-parameter nil 'font) 'bopomofo "WenQuanYi Zen Hei Mono-24")
;;(set-fontset-font (frame-parameter nil 'font) 'cjk-misc "WenQuanYi Zen Hei Mono-24")
;;(set-fontset-font (frame-parameter nil 'font) 'nil      "WenQuanYi Zen Hei Mono-24")
;;(set-fontset-font (frame-parameter nil 'font) 'symbol   "WenQuanYi Zen Hei Mono-24")
;;(set-fontset-font (frame-parameter nil 'font) 'kana     "WenQuanYi Micro Hei Mono-24")

;; transparent set
(global-set-key [(f8)] 'loop-alpha)  ;;注意这行中的F8 , 可以改成你想要的按键

(setq alpha-list '((80 55) (100 100)))

(defun loop-alpha ()
  (interactive)
  (let ((h (car alpha-list)))
    ((lambda (a ab)
       (set-frame-parameter (selected-frame) 'alpha (list a ab))
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))
       ) (car h) (car (cdr h)))
    (setq alpha-list (cdr (append alpha-list (list h))))
    )
)
(loop-alpha)

;; ============================== Basic Configure END ======================================


;; ============================== Color Setting START ======================================
;; ============================== Color Setting END ========================================

;; ============================== Python IDE Configure START ===============================

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.8.0/")
(require 'yasnippet)
(yas-global-mode 1)

;; auto-completion.el
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20140815.629/")
(require 'popup)

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20140824.1658/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20140824.1658/dict/")
(ac-config-default)

;; python-mode
(add-to-list 'load-path "~/.emacs.d/elpa/python-mode-6.1.3")
(require 'python-mode)

;; ipython
(add-to-list 'load-path "~/.emacs.d/elpa/ipython-2927/")
(require 'ipython)

;; python document -- start
(setq pylookup-dir "~/.emacs.d/plugins/pylookup")
(add-to-list 'load-path pylookup-dir)
(require 'pylookup)

;; load pylookup when compile time
(setq pylookup-program (concat pylookup-dir "/pylookup.py"))
(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))

;; set search option if you want
(setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))

;; to speedup, just load it on demand
(autoload 'pylookup-lookup "pylookup"
            "Lookup SEARCH-TERM in the Python HTML indexes." t)

(autoload 'pylookup-update "pylookup"
            "Run pylookup-update and create the database at `pylookup-db-file'." t)
(global-set-key "\C-ch" 'pylookup-lookup)

(setq browse-url-browser-function  'w3m-browse-url)
;; python document -- end

;; anything
(add-to-list 'load-path "~/.emacs.d/elpa/anything-config-0.4.1/")
;;(require 'anything-config)
;;(add-to-list 'load-path "~/.emacs.d/elpa/anything-ipython-0.1.2009/")
;;(require 'anything-ipython)
;;(when (require 'anything-show-completion nil t)
;;     (use-anything-show-completion 'anything-ipython-complete
;;     '(length initial-pattern)))

;; other compeletion methon
(add-to-list 'load-path "~/.emacs.d/elpa/pylint-20140729.1117/")
(require 'pylint)
(add-to-list 'load-path "~/.emacs.d/elpa/pep8-1.2/")
(require 'pep8)
(require 'tramp)

;; 保存时自动清除行尾空格及文件结尾空行
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; cscope -- start
(add-to-list 'load-path "~/.emacs.d/elpa/xcscope-20140510.1437")
(require 'xcscope)
(cscope-setup)
;; C-c s a             设定初始化的目录，一般是你代码的根目录
;; C-s s I             对目录中的相关文件建立列表并进行索引
;; C-c s s             序找符号
;; C-c s g             寻找全局的定义
;; C-c s c             看看指定函数被哪些函数所调用
;; C-c s C             看看指定函数调用了哪些函数
;; C-c s e             寻找正则表达式
;; C-c s f             寻找文件
;; C-c s i             看看指定的文件被哪些文件include
;; cscope -- end


;; ============================== Python IDE Configure END ===============================


;; ============================== C/C++ IDE Configure END ===============================
;; 设置另外一些颜色：语法高亮显示的背景和主题，区域选择的背景和主题，二次选择的背景和选择
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")
;; ============================== C/C++ IDE Configure END ===============================




;; ============================ Other Configure for emacs START ===============================
;;http://elpa.gnu.org/ Default. Official GNU Emacs package repository. This repository contains the minimal set, and are FSF signed.
;;http://tromey.com/elpa/ ELPA (being phased out as of 2012-07-03).
;;http://marmalade-repo.org/ Marmalade. More extensive number of packages.
;;http://melpa.milkbox.net/ MELPA. As of 2012-10-18, MELPA has most packages, and updated daily.

;;(when (>= emacs-major-version 24)
;;    (require 'package)
;;    (package-initialize)
    ;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
    ;;(add-to-list 'package-archives '("melpa" . "http://tromey.com/elpa/packages/") t)
    ;;(add-to-list 'package-archives '("melpa" . "http://elpa.gnu.org/packages/") t)
    ;;(add-to-list 'package-archives '("melpa" . "http://marmalade-repo.org/packages/") t)
;;    (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
;;    )
;; All packages repo
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                        ("marmalade" . "http://marmalade-repo.org/packages/")
                        ("melpa" . "http://melpa.milkbox.net/packages/")))

;; ============================== ECB Configure START  ===============================
(add-to-list 'load-path "~/.emacs.d/elpa/ecb-20140215.114/")
(setq ecb-tip-of-the-day nil)
(require 'ecb)
(require 'ecb-autoloads)
(setq ecb-auto-activate t)
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)
(define-key global-map [(control f2)] 'ecb-show-ecb-windows)
;;(define-key global-map [(control f3)] 'ecb-change-layout "left2")
;;(define-key global-map [(control f3)] 'ecb-change-layout)
;;(define-key global-map "\C-c3" 'ecb-change-layout)

(define-key global-map "\C-c1" 'ecb-maximize-window-directories)
(define-key global-map "\C-c2" 'ecb-maximize-window-sources)
(define-key global-map "\C-c3" 'ecb-maximize-window-methods)
(define-key global-map "\C-c4" 'ecb-maximize-window-history)
(define-key global-map "\C-c`" 'ecb-restore-default-window-sizes)
(global-set-key [f12] 'ecb-activate) ;; ecb activate
;;(define-key global-map "\C-c1" 'ecb-maximize-window-methods)
;;(define-key global-map "\C-c2" 'ecb-maximize-window-history)
;;(define-key global-map "\C-c`" 'ecb-restore-window-sizes)

;; Disable buckets so that history buffer can display more entries
(setq ecb-history-make-buckets 'never)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-create-layout-frame-height 10)
 '(ecb-create-layout-frame-width 50)
 '(ecb-layout-name "lkong")
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-toggle-layout-sequence (quote ("lkong2" "lkong")))
 '(ecb-windows-width 0.225))


;;不显示ecbTip
;;(set-foreground-color "grey")
(set-foreground-color "grey")
(set-background-color "black")
;;(setq ecb-layout-name "left10")
(setq ecb-history-make-buckets 'never)
(setq ecb-fix-window-size t)
(ecb-activate)

;; Ecb的操作:
;; C-c . g d 目录列表窗口
;; C-c . g s 源码窗口
;; C-c . g m 方法和变量窗口
;; C-c . g h 历史窗口
;; C-c . g l 最后选择过的编辑窗口
;; C-c . g 1 编辑窗口1
;; C-c . g n 编辑窗口n
;; C-c . l c 选择版面
;; C-c . l r 重画版面
;; C-c . l t switch layout
;; C-c . l w 拴牢可见的ecb窗口
;; C-c . /   拴牢编绎窗口
;; C-c . e: jump to the eshell buffer
;; C-c . n: histroy back
;; C-c . p: histroy forwad
;; C-c .h: Show ECB help pager
;; left2: directory + source
;; left6: source + method + history
;; left8: directory + source + method + history
;; ============================== ECB Configure END  ===============================
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ============================ Org-mode Configure START =================================
(require 'org-install)
(require 'org-publish)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-remember)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; GTD -- start
(setq org-todo-keywords
(quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
        (sequence "SOMEDAY(s@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("SOMEDAY" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold))))

(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("SOMEDAY" ("SOMEDAY" . t))
              ("HOLD" ("SOMEDAY" . t) ("HOLD" . t))
              (done ("SOMEDAY") ("HOLD"))
              ("TODO" ("SOMEDAY") ("CANCELLED") ("HOLD"))
              ("NEXT" ("SOMEDAY") ("CANCELLED") ("HOLD"))
              ("DONE" ("SOMEDAY") ("CANCELLED") ("HOLD")))))
(setq org-directory "~/Org-mode")

(global-set-key (kbd "C-c c") 'org-capture)
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/Org-mode/todo.org")
               ;;"* TODO %?\n%a\n" :clock-in t :clock-resume t)
               "* TODO %?")
              ("i" "idea" entry (file+datetree "~/Org-mode/idea.org")
               "* %? \n")
              ("s" "someday" entry (file "~/Org-mode/someday.org")
               "* SOMEDAY %? :SOMEDAY:\n%a\n" :clock-in t :clock-resume t)
              ("n" "note" entry (file "~/Org-mode/diary.org")
               "* %? :NOTE:\n%a\n" :clock-in t :clock-resume t)
              ("w" "org-protocol" entry (file "~/Org-mode/refile.org")
               "* TODO Review %c\n%U\n" :immediate-finish t))))

;;(setq org-tag-alist '(("office" . ?o) ("home" . ?h) ("notes" . ?n) ("slide" . ?s)))
;; GTD -- end

;; Only show the last star
;;(setq org-hide-leading-stars t)

;;org mode 自动折行
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))

;; Remove empty LOGBOOK drawers on clock out
(defun bh/remove-empty-drawer-on-clock-out ()
  (interactive)
  (save-excursion
    (beginning-of-line 0)
    (org-remove-empty-drawer-at "LOGBOOK" (point))))

(add-hook 'org-clock-out-hook 'bh/remove-empty-drawer-on-clock-out 'append)
(defun gtd ()
  (interactive)
  (find-file "~/Org-mode/todo.org")
         )

(global-set-key (kbd "<f12>") 'list-bookmarks)


(defun insert-current-time ()
  "Insert the current time"
  (interactive "*")
  ;;(insert (format-time-string "%Y/%m/%d %H:%M:%S" (current-time))))
  (insert (format-time-string "%Y-%m-%d" (current-time))))
;;(insert (format-time-string "%H:%M:%S" (current-time))))
(global-set-key "\C-xt" 'insert-current-time)
;; ============================ Org-mode Configure  END =================================


;; ============================ GTD Configure START ================================
;; ============================ GTD Configure END ==================================


;; ============================ Bugzilla Configure END ==================================
