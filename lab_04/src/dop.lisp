(defun x (a b) (+ a b))
(setf x '*)
(apply x '(1 2 3))  ;;; 6
(apply 'x '(1 2 3)) ;;; error: ожидалось 2 агрумента
(funcall x 2 4 5)   ;;; 40
(funcall 'x 2 4 5)  ;;; error: ожидалось 2 агрумента

(defun square (a b c)
    (cond
        ((and (= a 0) (= b 0) (= c 0)) 'R)
        ((and (= a 0) (= b 0)) Nil)
        ((= a 0) (/ (- c) b))
        (T
            (cons
                (+ (- b) (sqrt (- (* b b) (* '4 a c))))
                (- (- b) (sqrt (- (* b b) (* '4 a c))))
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
