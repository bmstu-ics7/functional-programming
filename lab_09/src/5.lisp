(defun first_list_map (lst)
    (reduce #'
        (lambda (el1 el2)
            (or
                (and (not (atom el1)) el1)
                (and (not (atom el2)) el2)
            )
        ) lst
    )
)

(first_list_map '(1 (2 3) 4 5 (6 7))) ;;; (2 3)
(first_list_map '(1 2 3 4)) ;;; Nil

(defun first_list_rec (lst)
    (cond
        ((null lst) Nil)
        ((not (atom (car lst))) (car lst))
        ('T (first_list_rec (cdr lst)))
    )
)

(first_list_rec '(1 (2 3) 4 5 (6 7))) ;;; (2 3)
(first_list_rec '(1 2 3 4)) ;;; Nil
