(defun last_odd (lst)
    (cond
        ((null lst) Nil)
        (T
            (let
                ((next_iteration (last_odd (cdr lst))))
                (cond
                    ((and (eql (mod (car lst) 2) 1) (not next_iteration)) (car lst))
                    (T next_iteration)
                )
            )
        )
    )
)

(last_odd '(1 2 3 4 5 6)) ;;; 5
(last_odd '(1 2 3 4 5)) ;;; 5
(last_odd '(2 4 6 8)) ;;; Nil
