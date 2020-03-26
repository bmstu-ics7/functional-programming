(defun abs_plus_one (num)
    (/ (* (+ (abs num) 1) num) (abs num))
)

(defun abs_plus_one (num)
    (if (> num 0) (+ num 1) (- num 1))
)

(abs_plus_one 12)  ;;; 13
(abs_plus_one -12) ;;; -13
