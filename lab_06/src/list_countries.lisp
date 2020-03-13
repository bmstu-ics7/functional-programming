(setq countries '(Russia USA GB Belarus))
(setq cities    '(Moscow Washington London Minsk))

(defun list_merge (countries cities)
    (mapcar #'(lambda (ctr cty) (list ctr cty)) countries cities)
)

(setq list_cc (list_merge countries cities))

(defun list_city (list_cc country)
    (reduce #'(lambda (a b) (or a b))
        (mapcar #'(lambda (el)
                    (and (equal (car el) country) (cadr el))
                ) list_cc
        )
    )
)

(list_city list_cc 'GB) ;;; London
(list_city list_cc 'NotExist) ;;; Nil
(list_city list_cc 'Russia) ;;; Moscow

(defun list_country (list_cc city)
    (reduce #'(lambda (a b) (or a b))
        (mapcar #'(lambda (el)
                    (and (equal (cadr el) city) (car el))
                ) list_cc
        )
    )
)

(list_country list_cc 'London) ;;; GB
(list_country list_cc 'NotExist) ;;; Nil
(list_country list_cc 'Moscow) ;;; Russia
