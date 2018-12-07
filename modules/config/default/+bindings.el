;;; config/default/+bindings.el -*- lexical-binding: t; -*-

(require 'windmove)

;;
(map!

 ;; Multiple cursors mode
 "M-æ" #'mc/mark-all-dwim
 "C-å" #'mc/mark-previous-like-this
 "C-æ" #'mc/mark-next-like-this
 "C-Æ" #'mc/mark-more-like-this-extended
 "M-å" #'mc/mark-all-in-region

 "M-&"  #'query-replace-regexp

 ;;
 "C-c c" #'comment-or-uncomment-region
 "C-c u" #'uncomment-region

  ;; Magit
  "C-x m" #'magit-status

  "C-x C-y" #'browse-kill-ring

  "<f5>" #'recompile

  "C-c p 4 a" #'projectile-find-other-file-other-window
  "C-c p 4 b" #'projectile-switch-to-buffer-other-window
  "C-c p 4 C-o" #'projectile-display-buffer
  "C-c p 4 d" #'projectile-find-dir-other-window
  "C-c p 4 D" #'projectile-dired-other-window
  "C-c p 4 f" #'projectile-find-file-other-window
  "C-c p 4 g" #'projectile-find-file-dwim-other-window
  "C-c p 4 t" #'projectile-find-implementation-or-test-other-window
  "C-c p 5 a" #'projectile-find-other-file-other-frame
  "C-c p 5 b" #'projectile-switch-to-buffer-other-frame
  "C-c p 5 d" #'projectile-find-dir-other-frame
  "C-c p 5 D" #'projectile-dired-other-frame
  "C-c p 5 f" #'projectile-find-file-other-frame
  "C-c p 5 g" #'projectile-find-file-dwim-other-frame
  "C-c p 5 t" #'projectile-find-implementation-or-test-other-frame
  "C-c p !" #'projectile-run-shell-command-in-root
  "C-c p &" #'projectile-run-async-shell-command-in-root
  "C-c p a" #'projectile-find-other-file
  "C-c p b" #'projectile-switch-to-buffer
  "C-c p C" #'projectile-configure-project
  "C-c p c" #'projectile-compile-project
  "C-c p d" #'projectile-find-dir
  "C-c p D" #'projectile-dired
  "C-c p e" #'projectile-recentf
  "C-c p E" #'projectile-edit-dir-locals
  "C-c p f" #'projectile-find-file
  "C-c p g" #'projectile-find-file-dwim
  "C-c p F" #'projectile-find-file-in-known-projects
  "C-c p i" #'projectile-invalidate-cache
  "C-c p I" #'projectile-ibuffer
  "C-c p j" #'projectile-find-tag
  "C-c p k" #'projectile-kill-buffers
  "C-c p l" #'projectile-find-file-in-directory
  "C-c p m" #'projectile-commander
  "C-c p o" #'projectile-multi-occur
  "C-c p p" #'projectile-switch-project
  "C-c p q" #'projectile-switch-open-project
  "C-c p P" #'projectile-test-project
  "C-c p r" #'projectile-replace
  "C-c p R" #'projectile-regenerate-tags
  "C-c p s g" #'projectile-grep
  "C-c p s r" #'projectile-ripgrep
  "C-c p s s" #'projectile-ag
  "C-c p S" #'projectile-save-project-buffers
  "C-c p t" #'projectile-toggle-between-implementation-and-test
  "C-c p T" #'projectile-find-test-file
  "C-c p u" #'projectile-run-project
  "C-c p v" #'projectile-vc
  "C-c p V" #'projectile-browse-dirty-projects
  "C-c p x e" #'projectile-run-eshell
  "C-c p x i" #'projectile-run-ielm
  "C-c p x t" #'projectile-run-term
  "C-c p x s" #'projectile-run-shell
  "C-c p z" #'projectile-cache-current-file
  "C-c p <left>" #'projectile-previous-project-buffer
  "C-c p <right>" #'projectile-next-project-buffer
  "C-c p ESC" #'projectile-project-buffers-other-buffer
  )

;; Please don't mess up my keybindings org! :@
(setq org-replace-disputed-keys t)
(windmove-default-keybindings) ;; Shift+direction

;; Real emacs knights don't use shift to mark things
(setq shift-select-mode nil)

;; Delete selection when entering text.
(delete-selection-mode 1)
;; Don't put the deleted selection on the kill ring, that's just annoying.
(delete-selection-helper 'kill)

(provide '+bindings)
