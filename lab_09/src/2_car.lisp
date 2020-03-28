(setq countries '(Russia USA GB Belarus))
(setq cities    '(Moscow Washington London Minsk))

(defun cons_merge (countries cities)
        (mapcar #'(lambda (ctr cty) (cons ctr cty)) countries cities)
)

(setq cons_cc (cons_merge countries cities))

(defun cons_city (cons_cc country)
    (reduce #'(lambda (a b) (or a b))
        (mapcar #'(lambda (el)
                    (and (equal (car el) country) (cdr el))
                ) cons_cc
        )
    )
)

(cons_city cons_cc 'GB) ;;; London
(cons_city cons_cc 'NotExist) ;;; Nil
(cons_city cons_cc 'Russia) ;;; Moscow

(defun cons_country (cons_cc city)
    (reduce #'(lambda (a b) (or a b))
        (mapcar #'(lambda (el)
                    (and (equal (cdr el) city) (car el))
                ) cons_cc
        )
    )
)

(cons_country cons_cc 'London) ;;; GB
(cons_country cons_cc 'NotExist) ;;; Nil
(cons_country cons_cc 'Moscow) ;;; Russia
