(list 'cons t NIL)
;;; Результат: (CONS T NIL)

(eval (eval (list 'cons t NIL)))
;;; Результат: ошибка - функция T не объявлена

(apply #cons '(t NIL))
;;; Результат: ошибка - неправильный формат комплексного числа: #CONS

(list 'eval NIL)
;;; Результат: (EVAL NIL)

(eval (list 'cons t NIL))
;;; Результат: (T)

(eval NIL)
;;; Результат: NIL

(eval (list 'eval NIL))
;;; Результат: NIL

