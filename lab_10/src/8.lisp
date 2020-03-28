(defun square_list (lst)
    (cond
        ((null lst) Nil)
        (T (cons (* (car lst) (car lst)) (square_list (cdr lst))))
    )
)

(square_list '(1 2 3 4 5)) ;;; (1 4 9 16 25)
