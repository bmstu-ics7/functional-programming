(defun list_without_last_map (lst)
    (mapcar #'(lambda (el _) el) lst (cdr lst))
)

(list_without_last_map ()) ;;; Nil
(list_without_last_map '(1 2 3 4 5)) ;;; (1 2 3 4)

(defun list_without_last_rec (lst)
    (cond
        ((null lst) Nil)
        ((eql (length lst) 1) Nil)
        (T (cons (car lst) (list_without_last_rec (cdr lst))))
    )
)

(list_without_last_rec ()) ;;; Nil
(list_without_last_rec '(1 2 3 4 5)) ;;; (1 2 3 4)
