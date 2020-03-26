(defun pred1 (x)
    (and (numberp x) (plusp x))
)

(defun pred2 (x)
    (and (plusp x) (numberp x))
)

(pred1 'a) ;;; Nil
(pred2 'a) ;;; Ошибка
;;; Сначала необходимо проверить
;;; является ли аргумент числом
;;; а потом больше ли он нуля
