(defun mystery (x)
    (list (second x) (first x))
)

(mystery (one two))
;;; Результат: ошибка - нет переменной ONE

(mystery (last one two))
;;; Результат: ошибка - нет переменной ONE

(mystery free)
;;; Результат: ошибка - нет переменной FREE

(mystery (one 'two))
;;; Результат: ошибка - нет переменной ONE
