(defun set-equal (list1 list2)
    (let
        (
         (l1 (sort list1 #'<))
         (l2 (sort list2 #'<))
        )
        (equal l1 l2)
    )
)

(set-equal '(1 2 3 4) '(4 3 2 1)) ;;; T
(set-equal '(1 2 3) '(3 2 4)) ;;; Nil
