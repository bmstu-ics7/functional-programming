(defun number_multiplication_car (lst n)
    (mapcar #'(lambda (el) (* el n)) lst)
)

(number_multiplication_car '(1 2 3 4) '5) ;;; (5 10 15 20)

(defun multiplication_car (lst n)
    (mapcar #'(lambda (el) (if (numberp el) (* el n) el)) lst)
)

(multiplication_car '(1 2 3 4) '5) ;;; (5 10 15 20)
(multiplication_car '(a 2 b 4) '5) ;;; (A 10 B 20)
