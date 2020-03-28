(defun recnth (n lst)
    (cond
        ((null lst) Nil)
        ((eql n 0) (car lst))
        (T (recnth (- n 1) (cdr lst)))
    )
)

(recnth 0 '(1 2 3)) ;;; 1
(recnth 1 '(1 2 3)) ;;; 2
(recnth 2 '(1 2 3)) ;;; 3
(recnth 3 '(1 2 3)) ;;; Nil
