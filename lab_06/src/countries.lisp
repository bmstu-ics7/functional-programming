;;; Дано два списка: первый список название стран, второй - столиц.
;;; * из двух списков создать список из двухэлементных списков
;;; * из двух списков создать список из точечных пар
;;; По полученным спискам по стране найти столицу и наоборот

(setq countries '(Russia USA GB Belarus))
(setq cities '(Moscow Washington London Minsk))

(defun list_merge_cc (countries cities)
    (cond
        ((null countries)  Nil)
        ((null cities)     Nil)
        (T (cons
            (list (car countries) (car cities))
            (list_merge_cc (cdr countries) (cdr cities))
        ))
    )
)

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

(setq list_merged_cc (list_merge_cc countries cities))
(setq cons_merged_cc (cons_merge_cc countries cities))

(defun list_find_country (list_cc city)
    (cond
        ((null list_cc) Nil)
        ((equal (cadar list_cc) city) (caar list_cc))
        (T (list_find_country (cdr list_cc) city))
    )
)

(list_find_country list_merged_cc 'Moscow) ;;; Russia
(list_find_country list_merged_cc  'Minsk) ;;; Belarus
(list_find_country list_merged_cc 'Sidney) ;;; Nil

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

(defun list_find_city (list_cc country)
    (cond
        ((null list_cc) Nil)
        ((equal (caar list_cc) country) (cadar list_cc))
        (T (list_find_city (cdr list_cc) country))
    )
)

(list_find_city list_merged_cc    'Russia) ;;; Moscow
(list_find_city list_merged_cc   'Belarus) ;;; Minsk
(list_find_city list_merged_cc 'Australia) ;;; Nil

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
