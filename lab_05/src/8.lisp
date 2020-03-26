(defun between_two_numbers (num num1 num2)
    (if (or
            (and (< num num1) (> num num2))
            (and (> num num1) (< num num2))
        )
        T
        Nil
    )
)

(between_two_numbers 1 2 3) ;;; Nil
(between_two_numbers 2 1 3) ;;; T
(between_two_numbers 2 3 1) ;;; T
