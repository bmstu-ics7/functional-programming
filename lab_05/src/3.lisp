(defun sort_two_numbers (num1 num2)
    (if (< num1 num2)
        (list num1 num2)
        (list num2 num1)
    )
)

(sort_two_numbers 1 2) ;;; (1 2)
(sort_two_numbers 2 1) ;;; (1 2)
