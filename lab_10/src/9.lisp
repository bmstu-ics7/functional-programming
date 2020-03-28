(defun select_odd_or_even (lst n)
    (cond
        ((null lst) Nil)
        ((eql (mod (car lst) 2) n) (append (list (car lst)) (select_odd_or_even (cdr lst) n)))
        (T (select_odd_or_even (cdr lst) n))
    )
)

(defun select-odd (lst) (select_odd_or_even lst 1))
(defun select-even (lst) (select_odd_or_even lst 0))

(select-odd '(1 2 3 4 5 6 7 8 9 10)) ;;; (1 3 5 7 9)
(select-even '(1 2 3 4 5 6 7 8 9 10)) ;;; (2 4 6 8 10)

(defun sum_odd_or_even (lst n)
    (cond
        ((null lst) 0)
        ((eql (mod (car lst) 2) n) (+ (car lst) (sum_odd_or_even (cdr lst) n)))
        (T (sum_odd_or_even (cdr lst) n))
    )
)

(defun sum-odd (lst) (sum_odd_or_even lst 1))
(defun sum-even (lst) (sum_odd_or_even lst 0))

(sum-odd '(1 2 3 4 5 6 7 8 9 10)) ;;; 25
(sum-even '(1 2 3 4 5 6 7 8 9 10)) ;;; 30
