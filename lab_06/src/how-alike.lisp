(defun how_alike (x y)
    (cond
        ((or (= x y) (equal x y)) 'the_same)
        ((and (oddp x) (oddp y)) 'both_odd)
        ((and (evenp x) (evenp y)) 'both_even)
        (t 'difference)))

(defun new_how_alike (x y)
    (if (or (= x y) (equal x y))
        'the_same
        (if (and (oddp x) (oddp y))
            'both_odd
            (if (and (evenp x) (evenp y))
                'both_even
                'difference))))

(how_alike 2 4) ;;; both_even
(how_alike 3 3) ;;; the_same
(how_alike 3 5) ;;; both_odd
(how_alike 4 5) ;;; difference

(new_how_alike 2 4) ;;; both_even
(new_how_alike 3 3) ;;; the_same
(new_how_alike 3 5) ;;; both_odd
(new_how_alike 4 5) ;;; difference
