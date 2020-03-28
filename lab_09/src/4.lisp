(defun minus_ten_car (lst)
    (mapcar #'(lambda (el) (- el 10)) lst)
)

(minus_ten_car '(1 2 3 4 5)) ;;; (-9 -8 -7 -6 -5)

(defun minus_ten_rec (lst)
    (cond
        ((null lst) Nil)
        ('T (cons (- (car lst) 10) (minus_ten_car (cdr lst))))
    )
)

(minus_ten_rec '(1 2 3 4 5)) ;;; (-9 -8 -7 -6 -5)
