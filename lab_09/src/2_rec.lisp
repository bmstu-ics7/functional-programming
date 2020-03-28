(setq countries '(Russia USA GB Belarus))
(setq cities '(Moscow Washington London Minsk))

(defun cons_merge_cc (countries cities)
    (cond
        ((null countries)  Nil)
        ((null cities)     Nil)
        (T (cons
            (cons (car countries) (car cities))
            (cons_merge_cc (cdr countries) (cdr cities))
        ))
    )
)

(setq cons_merged_cc (cons_merge_cc countries cities))

(defun cons_find_country (list_cc city)
    (cond
        ((null list_cc) Nil)
        ((equal (cdar list_cc) city) (caar list_cc))
        (T (cons_find_country (cdr list_cc) city))
    )
)

(cons_find_country cons_merged_cc 'Moscow) ;;; Russia
(cons_find_country cons_merged_cc  'Minsk) ;;; Belarus
(cons_find_country cons_merged_cc 'Sidney) ;;; Nil

(defun cons_find_city (list_cc country)
    (cond
        ((null list_cc) Nil)
        ((equal (caar list_cc) country) (cdar list_cc))
        (T (cons_find_city (cdr list_cc) country))
    )
)

(cons_find_city cons_merged_cc    'Russia) ;;; Moscow
(cons_find_city cons_merged_cc   'Belarus) ;;; Minsk
(cons_find_city cons_merged_cc 'Australia) ;;; Nil
