# Функциональное программирование

<details>
<summary>**Лабораторная работа 1**</summary>

1. Представить следующие списки в виде списочных ячеек:

    * `'(open close halph)`
    * `'((TOOL) (call))`
    * `'((open1) (close2) (halph3))`
    * `'(((TOOL1) (call2)) ((sell)))`
    * `'((one) for all (and(me(for you))))`
    * `'((TOOL) (call)) ((sell)))`

2. Используя только функции CAR и CDR, написать выражения, возвращающие

    1. второй
    2. третий
    3. четвертый элементы заданного списка.
</details>

<details>
<summary>**Лабораторная работа 2**</summary>

1. Что будет в результате вычисления выражений?

    * `(CAADR ' ((blue cube) (red pyramid)))`
    * `(CDAR '((abc) (def) (ghi)))`
    * `(CADR ' ((abc) (def) (ghi)))`
    * `(CADDR ' ((abc) (def) (ghi)))`

2. Напишите результат вычисления выражений:

    * `(list 'Fred 'and 'Wilma)`
    * `(list 'Fred ' (and Wilma))`
    * `(cons Nil Nil)`
    * `(cons T Nil)`
    * `(cons Nil T)`
    * `(list Nil)`
    * `(cons ' (T) Nil)`
    * `(list ' (one two) ' (free temp))`
    * `(cons 'Fred '(and Wilma))`
    * `(cons 'Fred '(Wilma))`
    * `(list Nil Nil)`
    * `(list T Nil)`
    * `(list Nil T)`
    * `(cons T (list Nil))`
    * `(list '(T) Nil)`
    * `(cons '(one two) '(free temp))`

3. Написать функции

    * `(f arl ar2 ar3 ar4)`, возвращающую список: `((arl ar2) (ar3 ar4))`.
    * `(f arl ar2)`, возвращающую `((arl) (ar2))`.
    * `(f arl)`, возвращающую `(((arl)))`.

    Представить результаты в виде списочных ячеек.
</details>
