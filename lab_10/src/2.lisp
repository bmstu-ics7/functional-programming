(defun reg-add (lst)
    (cond
        ((null lst) 0)
        (T (+ (car lst) (reg-add (cdr lst))))
    )
)

(reg-add '(2 4 6)) ;;; 12
