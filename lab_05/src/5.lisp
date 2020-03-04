(and 'fee 'fie 'foe)
;;; Результат: FOE

(or nil 'fie 'foe)
;;; Результат: FIE

(and (equal 'abc 'abc) 'yes)
;;; Результат: YES

(or 'fee 'fie 'foe)
;;; Результат: FEE

(and nil 'fie 'foe)
;;; Результат: NIL

(or (equal 'abc 'abc) 'yes)
;;; Результат: T
