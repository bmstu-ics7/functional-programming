(defun roll_the_dice ()
    (cons
        (+ (random 6) 1)
        (+ (random 6) 1)
    )
)

(defun turn (n)
    (let
        (
            (roll (roll_the_dice))
        )
        (and
            (if (eql n 1)
                (print "Игрок 1 бросил:")
                (print "Игрок 2 бросил:")
            )
            (print roll)
            (if (or
                    (and (eql (car roll) 1) (eql (cdr roll) 1))
                    (and (eql (car roll) 6) (eql (cdr roll) 6))
                )
                (cons roll (turn n))
                (list roll)
            )
        )
    )
)

(defun sum(res)
    (cond
        ((null res) 0)
        (T
            (let*
                (
                    (el1 (caar res))
                    (el2 (cdar res))
                    (plus (+ el1 el2))
                )
                (if (or (eql plus 7) (eql plus 11))
                    '100000000
                    (+ plus (sum (cdr res)))
                )
            )
        )
    )
)

(defun main ()
    (let
        (
            (res1 (sum (turn 1)))
            (res2 (sum (turn 2)))
        )
        (cond
            ((eql res1 res2) (print "Ничья"))
            ((> res1 res2) (print "Выйграл игрок 1"))
            (T (print "Выйграл игрок 2"))
        )
    )
)

(main)
