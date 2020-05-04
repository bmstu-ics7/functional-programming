(defun sum_recursive (a b d n lst)
    (cond
        ((null lst) 0)
        ((< b 0) 0)
        ((and (<= a 0) (eql n 0)) (+ (car lst) (sum_recursive a (- b 1) d (- d 1) (cdr lst))))
        ((<= a 0) (sum_recursive a (- b 1) d (- n 1) (cdr lst)))
        (T (sum_recursive (- a 1) (- b 1) d 0 (cdr lst)))
    )
)

(defun sum_elements (a b d lst)
    (cond
        ((or (> a b) (<= d 0)) 0)
        (T (sum_recursive a b d 0 lst))
    )
)

(sum_elements 5 3 1 '(1 2 3 4 5 6 7 8 9 10)) ;;; 0
(sum_elements 0 9 1 '(1 2 3 4 5 6 7 8 9 10)) ;;; 1+2+3+4+5+6+7+8+9+10 = 55
(sum_elements 2 8 1 '(1 2 3 4 5 6 7 8 9 10)) ;;; 3+4+5+6+7+8+9 = 42
(sum_elements 2 5 2 '(1 2 3 4 5 6 7 8 9 10)) ;;; 3+5 = 8
(sum_elements 2 8 3 '(1 2 3 4 5 6 7 8 9 10)) ;;; 3+6+9 = 18
