(defun take_between_map (a b lst)
    (reduce #'
        (lambda (lst el)
            (append
                (if (numberp lst)
                    (if (and (<= a lst) (>= b lst))
                        (list lst)
                    )
                    lst
                )
                (if (and (<= a el) (>= b el))
                    (list el)
                )
            )
        ) lst
    )
)

(take_between_map '1 '10 '(-10 -5 0 5 10 15)) ;;; (5 10)
(take_between_map '-10 '5 '(-10 -5 0 5 10 15)) ;;; (-10 -5 0 5)

(defun take_between_rec (a b lst)
    (cond
        ((null lst) Nil)
        ((and (<= a (car lst)) (>= b (car lst))) (cons (car lst) (take_between_rec a b (cdr lst))))
        ('T (take_between_rec a b (cdr lst)))
    )
)

(take_between_rec '1 '10 '(-10 -5 0 5 10 15)) ;;; (5 10)
(take_between_rec '-10 '5 '(-10 -5 0 5 10 15)) ;;; (-10 -5 0 5)
