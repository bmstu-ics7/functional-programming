(setf lst1 '(a b))
(setf lst2 '(c d))

(cons lst1 lst2)   ;;; ((A B) C D)
(list lst1 lst2)   ;;; ((A B) (C D))
(append lst1 lst2) ;;; (A B C D)
