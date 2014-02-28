;; .emacs
;; ============================== Basic Configure START =====================================
;; set TAB=4 for C
;;(setq c-basic-offset 4)

;; show colume number
;;(setq column-number-mode t)

;;Warning: cedet-called-interactively-p called with 0 arguments, but requires 1
(setq byte-compile-warnings nil)
;; kill the buffer imediate
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)
(global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq use-dialog-box nil)
(setq semantic-edits-verbose-flag nil)

;; auto enter new line
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; set font
;;(set-default-font "-adobe-courier-medium-r-normal--17-120-100-100-m-100-iso8859-1")
;;(set-default-font "WenQuanYi Bitmap Song:style=Regular")

(defun my-fullscreen ()
(interactive)
(x-send-client-message
  nil 0 nil "_NET_WM_STATE" 32
  '(2 "_NET_WM_STATE_FULLSCREEN" 0))
)

(global-set-key [f11] 'my-fullscreen) ;; full screen

;;(defun my-maximized ()
;;  (interactive)
;;  (x-send-client-message
;;    nil 0 nil "_NET_WM_STATE" 32
;;    '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
;;  (x-send-client-message
;;    nil 0 nil "_NET_WM_STATE" 32
;;    '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
;;  )
;;(my-maximized) ;; 启动emacs时窗口最大化

;; 启动窗口大小
;;(setq default-frame-alist
;;            '((height . 35) (width . 125) (menu-bar-lines . 20) (tool-bar-lines . 0)))

;;set the back directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))

(setq default-fill-column 60)
(show-paren-mode 1)

;; yes/no -> y/n
(fset 'yes-or-no-p'y-or-n-p)

;; statment highlight
(global-font-lock-mode t)

;; use a large kill ring
(setq kill-ring-max 1024)

;; Show the corse in which function
(which-function-mode t)

;; set default tab width
(setq default-tab-width 4)

;; do not use space to instead TAB
(setq-default indent-tabs-mode t)

;; enable global line number
;;(global-linum-mode 1)

;; No backup
(setq backup-inhibited t)

;; color theme
;;(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme")
(add-to-list 'custom-theme-load-path "~/.emacs.d/plugins")
(require 'color-theme)
(color-theme-initialize)

(setq molokai-theme-kit t)

(color-theme-euphoria)
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/plugins/emacs-color-theme-solarized")
;;(load-theme 'solarized-light t)

;;(color-theme-calm-forest)

;; ============================== Basic Configure END ======================================
(require 'yasnippet "~/.emacs.d/plugins/yasnippet/yasnippet.el")
(yas/initialize)
(setq yas/root-directory "~/.emacs.d/plugins/yasnippet/snippets")
(yas/load-directory yas/root-directory)


;;(add-to-list 'load-path "~/.emacs.d/plugins/")
;;(add-to-list 'load-path
;;              "~/.emacs.d/plugins/yasnippet")
;;(require 'yasnippet)
(yas-global-mode 1)

;; =================================== Python IDE START ======================================
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;auto completion START ;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "/home/aaron/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             "/home/aaron/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")

;;User Defined Dictionary
;;(setq ac-user-dictionary '("foobar@example.com" "hogehoge@example.com"))
;;
;;Not to complete automatically
;;(setq ac-auto-start nil)
(setq ac-auto-start 4)
;;Not to show completion menu automatically
;;(setq ac-auto-show-menu nil)
(define-key ac-completing-map "\t" 'ac-complete)
(define-key ac-completing-map "\r" nil)

;; Bad config
;;(define-key ac-completing-map "\C-n" 'ac-next)
;;(define-key ac-completing-map "\C-p" 'ac-previous)

;; Enable auto-complete-mode automatically for specific modes
;;(add-to-list 'ac-modes 'brandnew-mode)


;;(set-face-background 'ac-candidate-face "lightgray")
;;(set-face-underline 'ac-candidate-face "darkgray")
;;(set-face-background 'ac-selection-face "steelblue")

;;;;;;;;;;;;;;;; auto complete END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; ipython START
(add-to-list 'load-path
              "~/.emacs.d/plugins")
(require 'ipython)
;; ipython END

;; python-mode START
(add-to-list 'load-path "~/.emacs.d/plugins/python-mode")
(setq py-install-directory "~/.emacs.d/plugins/python-mode")
(require 'python-mode)
(setq py-shell-name "ipython")
;;(py-shell-name "ipython")
(setq py-shell-name "~/.emacs.d/plugins")
;;enable code auto-completion(python-mode)
(setq py-load-pymacs-p t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; python-mode END


;; install python document START
(setq pylookup-dir "~/.emacs.d/plugins/pylookup")
(add-to-list 'load-path pylookup-dir)
(require 'pylookup)

;; load pylookup when compile time
(eval-when-compile (require 'pylookup))

;; set search option if you want
(setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))

;; to speedup, just load it on demand
(autoload 'pylookup-lookup "pylookup"
            "Lookup SEARCH-TERM in the Python HTML indexes." t)
(autoload 'pylookup-update "pylookup"
  "Run pylookup-update and create the database at `pylookup-db-file'." t)
(global-set-key "\C-ch" 'pylookup-lookup)

;;(autoload 'pylookup-lookup "pylookup")
;;(autoload 'pylookup-update "pylookup")
(setq pylookup-program "~/.emacs.d/plugins/pylookup/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/plugins/pylookup/pylookup.db")
(setq browse-url-browser-function  'w3m-browse-url)
;;(global-set-key "\C-ch" 'pylookup-lookup)
;; install python document END

;; autopair.el START
(require 'autopair)
(autoload 'autopair-global-mode "autopair" nil t)
(autopair-global-mode)
(add-hook 'lisp-mode-hook #'(lambda () (setq autopair-dont-activate t)))

(add-hook 'python-mode-hook
                    #'(lambda () (push '(?' . ?')
                                        (getf autopair-extra-pairs :code))
(setq autopair-handle-action-fns
             (list #'autopair-default-handle-action
                               #'autopair-python-triple-quote-action))))
;; autopair.el END

;;pylint & pep8 START
(require 'python-pylint)
(require 'python-pep8)
(require 'tramp)
;; pylint & pep8 END

;; anything START
(add-to-list 'load-path "~/.emacs.d/plugins/anything")
(require 'anything) (require 'anything-ipython)
(when (require 'anything-show-completion nil t)
         (use-anything-show-completion 'anything-ipython-complete
                                                 '(length initial-pattern)))
;;(define-key py-mode-map (kbd "r-") 'anything-ipython-complete)
;;(define-key py-shell-map (kbd "m-") 'anything-ipython-complete)
(define-key py-mode-map (kbd "C-c M") 'anything-ipython-import-modules-from-buffer)
;; anything END
;; ===================================Python IDE END ==========================================

;; Set Org mode START
(setq org-src-fontify-natively t)
(setq org-export-latex-listings t)
(setq org-export-latex-hyperref-format "\\ref{%s}")
(setq org-log-done 'time)
(setq org-log-done 'note)
;; Set Org mode END


;; ======================== My key binding START ==========================
;; ======================== My key binding END ==========================

;; ======= screen =========

;; ======= screen =========
;;
;;
;; ======== mode-line =========
(setq sml/theme 'dark)
(require 'smart-mode-line)
(sml/setup)

;; install dash START
(add-to-list 'load-path "~/.emacs.d/plugins/dash")
;; install dash END
;;(set-frame-font "Courier New:pixelsize=14")

;; ================ CEDET START ====================
(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
(semantic-load-enable-guady-code-helpers)
(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)

(global-set-key [f12] 'semantic-ia-fast-jump)
(global-set-key [S-f12]
                (lambda ()
                  (interactive)
                  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
                      (error "Semantic Bookmark ring is currently empty"))
                  (let* ((ring (oref semantic-mru-bookmark-ring ring))
                         (alist (semantic-mrub-ring-to-assoc-list ring))
                         (first (cdr (car alist))))
                    (if (semantic-equivalent-tag-p (oref first tag)
                                                   (semantic-current-tag))
                        (setq first (cdr (car (cdr alist)))))
                    (semantic-mrub-switch-tags first))))
(global-ede-mode t)
(enable-visual-studio-bookmarks)

;; ================ ORG MODE START =================
(setq load-path (cons "~/lib/emacs-lisp/org-7.01h/lisp" load-path))
(setq load-path (cons "~/lib/emacs-lisp/org-7.01h/contrib/lisp" load-path))

(require 'org-install)
(require 'org-publish)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;;(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cc" 'org-remember)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;;(setq org-todo-keywords
;;            '((sequence "TODO(t)" "LATER(l)" "NEEDINFO(n@)" "|" "DONE(d)" "CANCEL(c)" "Redmine(r@)")))

(setq org-todo-keywords
(quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
        (sequence "SOMEDAY(s@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "REDMINE(r@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("SOMEDAY" :foreground "orange" :weight bold)
              ("REDMINE" :foreground "cyan" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("MEETING" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))

(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("SOMEDAY" ("SOMEDAY" . t))
              ("HOLD" ("SOMEDAY" . t) ("HOLD" . t))
              (done ("SOMEDAY") ("HOLD"))
              ("TODO" ("SOMEDAY") ("CANCELLED") ("HOLD"))
              ("NEXT" ("SOMEDAY") ("CANCELLED") ("HOLD"))
              ("DONE" ("SOMEDAY") ("CANCELLED") ("HOLD")))))


(setq org-directory "~/Org-mode")
(setq org-default-notes-file "~/git/org/refile.org")

(global-set-key (kbd "C-c c") 'org-capture)
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/Org-mode/todo.org")
               ;;"* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
               "* TODO %?\n%a\n" :clock-in t :clock-resume t)
              ("i" "idea" entry (file+datetree "~/Org-mode/idea.org")
;;               "* %? :IDEA:\n%a\n" :clock-in t :clock-resume t)
               "* %? \n")
               ;;"* %?\n%U\n" :clock-in t :clock-resume t)
              ("s" "someday" entry (file "~/Org-mode/someday.org")
               "* SOMEDAY %? :SOMEDAY:\n%a\n" :clock-in t :clock-resume t)
              ("n" "note" entry (file "~/Org-mode/diary.org")
               "* %? :NOTE:\n%a\n" :clock-in t :clock-resume t)
              ("r" "redmine" entry (file "~/Org-mode/redmine.org")
               "* %? \n%a\n" :clock-in t :clock-resume t)
              ("w" "org-protocol" entry (file "~/Org-mode/refile.org")
               "* TODO Review %c\n%U\n" :immediate-finish t)
              ("m" "Meeting" entry (file "~/Org-mode/refile.org")
               "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
              ("h" "Habit" entry (file "~/Org-mode/refile.org")
               "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"<%Y-%m-%d %a .+1d/3d>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))

(setq org-tag-alist '(("OFFICE" . ?o) ("HOME" . ?h) ("REDMINE" . ?r) ("SPARE" . ?s)))

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

;;(setq org-todo-keywords
;;          '((sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
;;                  (sequence "TODO(T!)" "|" "DONE(D@)3" "CANCELED(C@/!)")
;;                       ))
;; ================ ORG MODE END ===================
;;(create-fontset-from-fontset-spec
;;  "-*-courier-medium-R-normal--12-*-*-*-*-*-fontset-mymono,
;;  chinese-gb2312:-*-wenquanyi bitmap song-medium-*-normal--14-*-*-*-*-*-iso10646-1,
;;  chinese-gbk:-*-wenquanyi bitmap song-medium-*-normal--14-*-*-*-*-*-iso10646-1,
;;  chinese-gb18030:-*-wenquanyi bitmap song-medium-*-normal--14-*-*-*-*-*-iso10646-1"
;;  )
;;(setq default-frame-alist (append '((font . "fontset-mymono")) default-frame-alist))
;;(set-default-font "fontset-mymono")
;;(set-default-font "fontset-mymono")

;;(set-default-font "-bitstream-charter-medium-r-normal--17-120-100-100-p-95-iso8859-1")

;; ====== Set for emacs client START =================

;;(create-fontset-from-fontset-spec
;; "-*-terminus-medium-*-*-*-14-*-*-*-*-*-fontset-my, han: WenQuanYi Bitmap Song-14")

(global-set-key (kbd "<f12>") 'list-bookmarks)


(defun insert-current-time ()
  "Insert the current time"
  (interactive "*")
  ;;(insert (format-time-string "%Y/%m/%d %H:%M:%S" (current-time))))
  (insert (format-time-string "%Y-%m-%d" (current-time))))
;;(insert (format-time-string "%H:%M:%S" (current-time))))
(global-set-key "\C-xt" 'insert-current-time)


;;set Mew
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

;; 下面的图标路径和安装路径有关，具体请看Mew的安装过程
(setq mew-icon-directory "/usr/local/share/emacs/site-lisp/mew/etc/")
(setq mew-use-cached-passwd t)


;; mew-pop-size设置成0时，pop邮件大小没有限制
(setq mew-pop-size 0)
;; 不删除服务器上的邮件
(setq mew-pop-delete nil)
(setq mew-config-alist
   '(("default"
     ("name"         .  "Your Name")
     ("user"         .  "username")
     ("mail-domain"  .  "163.com")
     ("pop-server"   .  "pop3.163.com")
     ("pop-port"     .  "110")
     ("pop-user"     .  "username")
     ("pop-auth"     .  pass)
     ("smtp-server"  .  "smtp.163.com")
     ("smtp-port"    .  "25")
     ("smtp-user"    .  "username")
     ("smtp-auth-list"  .  ("PLAIN" "LOGIN" "CRAM-MD5")))))
;; the above is good configure

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-windows-height 0.33)
 '(ecb-windows-width 0.22))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;ECB
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)
(define-key global-map [(control f2)] 'ecb-show-ecb-windows)
;;(define-key global-map [(control f3)] 'ecb-change-layout "left3")

(define-key global-map "\C-c1" 'ecb-maximize-window-directories)
(define-key global-map "\C-c2" 'ecb-maximize-window-sources)
(define-key global-map "\C-c3" 'ecb-maximize-window-methods)
(define-key global-map "\C-c4" 'ecb-maximize-window-history)
(define-key global-map "\C-c`" 'ecb-restore-default-window-sizes)
;;(define-key global-map "\C-c`" 'ecb-restore-window-sizes)

;;不显示ecbTip
(setq ecb-tip-of-the-day nil)
(setq ecb-auto-activate t)
(require 'ecb-autoloads)
(set-foreground-color "grey")
(set-background-color "black")
;;(setq ecb-layout-name "left10")
(setq ecb-history-make-buckets 'never)


;;关闭启动画面
(setq inhibit-startup-message t)

;; 高亮显示要拷贝的区域
(transient-mark-mode t)
(kill-this-buffer) ; 关闭设置所产生的定制窗口
(setq ansi-color-for-comint-mode t)
(customize-group 'ansi-colors)

;;add cscope
(require 'xcscope)
;;(setq cscope-do-not-update-database t)

;;delete trailing spac
(set-default-font " -bitstream-Courier 10 Pitch-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1")

(add-hook 'before-save-hook 'delete-trailing-whitespace)


;;auto complete
;;(require 'pycomplete.el)
;;(require 'python-mode)


;;Pymacs START
(require 'pymacs)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;;;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY))
;;Pymacs END

(setq default-directory "~/")
(setq-default indent-tabs-mode nil)
(setq tab-width 4 indent-tab-mode nil)

;;ipdb
(defun annotate-pdb ()
    (interactive)
      (highlight-lines-matching-regexp "import ipdb")
        (highlight-lines-matching-regexp "ipdb.set_trace()"))
(add-hook 'python-mode-hook 'annotate-pdb)

(defun python-add-breakpoint ()
     (interactive)
       (py-newline-and-indent)
         (insert "import ipdb; ipdb.set_trace()")
           (highlight-lines-matching-regexp "^[ ]*import ipdb; ipdb.set_trace()"))
;;(define-key py-mode-map (kbd "C-c C-t") 'python-add-breakpoint)


(require 'erc-log)
(erc-log-mode 1)
(setq erc-log-channels-directory "~/var/erc/"
      erc-save-buffer-on-part t
      erc-log-file-coding-system 'utf-8
      erc-log-write-after-send t
      erc-log-write-after-insert t)

(unless (file-exists-p erc-log-channels-directory)
  (mkdir erc-log-channels-directory t))

;;消息通知
(defun xwl-erc-text-matched-hook (match-type nickuserhost message)
  "Shows a growl notification, when user's nick was mentioned.
     If the buffer is currently not visible, makes it sticky."
  (when (and (erc-match-current-nick-p nickuserhost message)
             (not (string-match (regexp-opt '("Users"
                                              "User"
                                              "topic set by"
                                              "Welcome to "
                                              "nickname"
                                              "identified"
                                              "invalid"
                                              ))
                                message)))
    (let ((s (concat "ERC: " (buffer-name (current-buffer)))))
      (case system-type
        ((darwin)
         (xwl-growl s message))))))

(add-hook 'erc-text-matched-hook 'xwl-erc-text-matched-hook)

(defun xwl-growl (title message)
  (start-process "growl" " growl" growlnotify-command title "-a" "Emacs")
  (process-send-string " growl" message)
  (process-send-string " growl" "\n")
  (process-send-eof " growl"))
