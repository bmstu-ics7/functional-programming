;;; Результат: RED
(CAADR '((blue cube) (red pyramid)))

;;; Результат: NIL
(CDAR '((abc) (def) (ghi)))

;;; Результат: (DEF)
(CADR '((abc) (def) (ghi)))

;;; Результат: (GHI)
(CADDR '((abc) (def) (ghi)))

;;; Результат: (FRED AND WILMA)
(list 'Fred 'and 'Wilma)

;;; Результат: (FRED (AND WILMA))
(list 'Fred ' (and Wilma))

;;; Результат: (NIL)
(cons Nil Nil)

;;; Результат: (T)
(cons T Nil)

;;; Результат: (NIL . T)
(cons Nil T)

;;; Результат: (NIL)
(list Nil)

;;; Результат: ((T))
(cons ' (T) Nil)

;;; Результат: ((ONE TWO) (FREE TEMP))
(list ' (one two) ' (free temp))

;;; Результат: (FRED AND WILMA)
(cons 'Fred '(and Wilma))

;;; Результат: (FRED WILMA)
(cons 'Fred '(Wilma))

;;; Результат: (NIL NIL)
(list Nil Nil)

;;; Результат: (T NIL)
(list T Nil)

;;; Результат: (NIL T)
(list Nil T)

;;; Результат: (T NIL)
(cons T (list Nil))

;;; Результат: ((T) NIL)
(list '(T) Nil)

;;; Результат: ((ONE TWO) FREE TEMP)
(cons '(one two) '(free temp))

;;; Написать функцию (f arl ar2 ar3 ar4), возвращающую список: ((arl ar2) (ar3 ar4)).
(defun f1 (a1 a2 a3 a4)
    (list
        (list a1 a2)
        (list a3 a4)
    )
)

(f1 1 2 3 4)

;;; Написать функцию (f arl ar2), возвращающую ((arl) (ar2)).

(defun f2 (a1 a2)
    (list
        (list a1)
        (list a2)
    )
)

(f2 1 2)

;;; Написать функцию (f arl), возвращающую (((arl))).

(defun f3 (a)
    (list
        (list
            (list a)
        )
    )
)

(f3 1)
