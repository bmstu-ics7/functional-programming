(defun last_red (lst)
    (if (null lst)
        Nil
        (reduce #'(lambda (_ el) el) lst)
    )
)

(last_red ()) ;;; Nil
(last_red '(1 2 3 4 5)) ;;; 5

(defun last_rec (lst)
    (cond
        ((null lst) Nil)
        ((eql (length lst) 1) (car lst))
        (T (last_rec (cdr lst)))
    )
)

(last_rec ()) ;;; Nil
(last_rec '(1 2 3 4 5)) ;;; 5
