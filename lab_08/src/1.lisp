(defun is_palindrom (lst)
    (equal lst (reverse lst))
)

(is_palindrom "abccba") ;;; T
(is_palindrom "abcgba") ;;; Nil
