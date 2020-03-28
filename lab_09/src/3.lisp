(defun number_multiplication_car (lst n)
    (mapcar #'(lambda (el) (* el n)) lst)
)

(number_multiplication_car '(1 2 3 4) '5) ;;; (5 10 15 20)

(defun number_multiplication_rec (lst n)
    (cond
        ((null lst) Nil)
        ('T (cons (* n (car lst)) (multiplication_rec (cdr lst) n)))
    )
)

(number_multiplication_rec '(1 2 3 4) '5) ;;; (5 10 15 20)

(defun multiplication_car (lst n)
    (mapcar #'(lambda (el) (if (numberp el) (* el n) el)) lst)
)

(multiplication_car '(1 2 3 4) '5) ;;; (5 10 15 20)
(multiplication_car '(a 2 b 4) '5) ;;; (A 10 B 20)

(defun multiplication_rec (lst n)
    (cond
        ((null lst) Nil)
        ('T
            (let*
                (
                    (el (car lst))
                    (final_el (if (numberp el) (* el n) el))
                    (next_iteration (multiplication_rec (cdr lst) n))
                )
                (cons final_el next_iteration)
            )
        )
    )
)

(multiplication_rec '(1 2 3 4) '5) ;;; (5 10 15 20)
(multiplication_rec '(a 2 b 4) '5) ;;; (A 10 B 20)
