(defun first_even_after (num)
    (if (equal (mod num 2) 0)
        num
        (+ num 1)
    )
)

(first_even_after 12) ;;; 12
(first_even_after 13) ;;; 14
