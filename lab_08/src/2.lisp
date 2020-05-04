(defun swap-first-last (lst)
    (cond
        ((null lst) Nil)
        ((eql (length lst) 1) lst)
        (T
            (append
                (last lst)
                (mapcar #'(lambda (el _) el) (cdr lst) (cddr lst))
                (list (first lst))
            )
        )
    )
)

(swap-first-last ()) ;;; Nil
(swap-first-last '(1)) ;;; (1)
(swap-first-last '(1 2)) ;;; (2 1)
(swap-first-last '(1 2 3 4 5)) ;;; (5 2 3 4 1)
