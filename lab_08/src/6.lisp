(defun select_between (a b lst)
    (sort (reduce #'
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
    ) #'<)
)

(select_between '1 '10 '(40 5 2 -6 3 1 8)) ;;; (1 2 3 5 8)
(select_between '-10 '5 '(-6 -2 -11 8 0 1 -10 -7 100 20 -4))
;;; (-10 -7 -6 -4 -2 0 1)
