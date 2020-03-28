(defun swap-two-elements (a b lst)
    (cond
        ((eql a b) lst)
        ((> a b) (swap-two-elements b a lst))
        (T
            (append
                (subseq lst 0 a)
                (list (nth b lst))
                (subseq lst (+ a 1) b)
                (list (nth a lst))
                (subseq lst (+ b 1))
            )
        )
    )
)

(swap-two-elements '2 '4 '(1 2 3 4 5)) ;;; (1 2 5 4 3)
(swap-two-elements '1 '4 '(1 2 3 4 5)) ;;; (1 5 3 4 2)
(swap-two-elements '3 '2 '(1 2 3 4 5)) ;;; (1 2 4 3 5)
