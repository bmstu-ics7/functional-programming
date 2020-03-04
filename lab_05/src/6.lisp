(defun more_or_equal (num1 num2)
    (cond
        ((> num1 num2) T)
        ((equal num1 num2) T)
        (Nil)
    )
)

(more_or_equal 2 2) ;;; T
(more_or_equal 3 2) ;;; T
(more_or_equal 1 2) ;;; Nil
