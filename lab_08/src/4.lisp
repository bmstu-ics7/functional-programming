(defun swap-to-left-one (lst)
    (append (mapcar #'(lambda (el _) el) (cdr lst) lst) (list (car lst)))
)

(defun swap-to-left (lst k)
    (cond
        ((<= k 0) lst)
        (T (swap-to-left (swap-to-left-one lst) (- k 1)))
    )
)

(swap-to-left '(1 2 3 4 5) 2) ;;; (3 4 5 1 2)
(swap-to-left '(1 2 3 4 5) 5) ;;; (1 2 3 4 5)

(defun swap-to-right-one (lst)
    (append (last lst) (mapcar #'(lambda (el _) el) lst (cdr lst)))
)

(defun swap-to-right (lst k)
    (cond
        ((<= k 0) lst)
        (T (swap-to-right (swap-to-right-one lst) (- k 1)))
    )
)

(swap-to-right '(1 2 3 4 5) 2) ;;; (4 5 1 2 3)
(swap-to-right '(1 2 3 4 5) 5) ;;; (1 2 3 4 5)
