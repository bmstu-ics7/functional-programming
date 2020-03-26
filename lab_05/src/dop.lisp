(defun square (a b c)
    (or
        (and (= a 0) (= b 0) (= c 0) 'R)
        (and (= a 0) (= b 0) 'Null)
        (and (= a 0) (/ (- c) b))
        (let
            (
                (d (sqrt (- (* b b) (* '4 a c))))
                (a2 (* 2 a))
            )
            (cons
                (/ (+ (- b) d) a2)
                (/ (- (- b) d) a2)
            )
        )
    )
)

(square 0 0 0)
(square 0 0 2)
(square 0 1 -2)
(square 5 2 -3)
(square 1 2 1)
(square 1 2 100)

(with-open-file (str "output.txt"
                     :direction :output
                     :if-exists :supersede
                     :if-does-not-exist :create)
    (let
        (
            (result (square 5 2 -3))
        )
        (format str "~,2f ~,2f" (car result) (cdr result))
    )
)
