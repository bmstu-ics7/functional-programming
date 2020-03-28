(defun sum_length (lst)
    (cond
        ((null lst) 0)
        (T (+ (length (car lst)) (sum_length (cdr lst))))
    )
)

(sum_length '((1 2 3) (1 2) (1) (1 2 3 4) (1 2))) ;;; 12
