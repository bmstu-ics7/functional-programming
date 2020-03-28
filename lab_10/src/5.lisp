(defun last_rec (lst)
    (cond
        ((null lst) Nil)
        ((eql (length lst) 1) (car lst))
        (T (last_rec (cdr lst)))
    )
)

(last_rec ()) ;;; Nil
(last_rec '(1 2 3 4)) ;;; 4
