(defun decart_map (lst1 lst2)
    (mapcan #'
        (lambda (x)
            (mapcar #'(lambda (y) (cons x y)) lst2)
        ) lst1
    )
)

(decart_map '(1 2 3 4 5) '(a b c d e))
(decart_map '(1 2) '(a b)) ;;; ((1 . A) (1 . B) (2 . A) (2 . B))

(defun decart_one_element (el lst)
    (cond
        ((null lst) Nil)
        ('T (cons (cons el (car lst)) (decart_one_element el (cdr lst))))
    )
)

(defun decart_rec (lst1 lst2)
    (cond
        ((null lst1) Nil)
        ('T (append (decart_one_element (car lst1) lst2) (decart_rec (cdr lst1) lst2)))
    )
)

(decart_rec '(1 2 3 4 5) '(a b c d e))
(decart_rec '(1 2) '(a b)) ;;; ((1 . A) (1 . B) (2 . A) (2 . B))
