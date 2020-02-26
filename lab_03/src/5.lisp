(defun longer_then (list1 list2)
    (> (length list1) (length list2))
)

(longer_then '(1 2 3) '(1 2)) ;;; T
(longer_then '(1 2 3) '(1 2 3 4)) ;;; NIL
