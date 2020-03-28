(defun alloddr (lst)
    (cond
        ((null lst) T)
        ((eql (mod (car lst) 2) 0) Nil)
        (T (alloddr (cdr lst)))
    )
)

(alloddr '(1 2 3 4)) ;;; Nil
(alloddr '(1 3 5 7 9 10)) ;;; Nil
(alloddr '(1 3 5 7 9)) ;;; T
