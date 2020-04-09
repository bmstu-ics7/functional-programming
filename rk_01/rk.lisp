(defun my_append (lst1 lst2)
    (cond
        ((null lst1)
            (cond
                ((atom lst2) (list lst2))
                ('T lst2)
            )
        )
        ('T (cons (car lst1) (my_append (cdr lst1) lst2)))
    )
)

(defun my_reverse (lst)
    (cond
        ((eql (cdr lst) 'Nil) lst)
        ('T (my_append (my_reverse (cdr lst)) (car lst)))
    )
)

(defun my_length (lst)
    (cond
        ((null lst) 0)
        ('T (+ 1 (my_length (cdr lst))))
    )
)
