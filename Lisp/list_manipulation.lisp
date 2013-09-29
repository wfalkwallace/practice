;Variable Definition Examples
(setf x 1)

(setf cake `pants)

(setf $#!@$ '&&&&&)

;List Definition Examples
(setf mylist `(1 2 3))

(setq mylist `(1 2 3))

(set 'mylist `(1 2 3))

(set 'mylist `(1 2 3))

(set 'mylist (quote (1 2 3)))

(set (quote mylist) (quote (1 2 3)))

;car & cdr
(setf mylist `(5 pants orange))

(car mylist)

(cdr mylist)

;how would you get pants?
;you can cdr forever!
(cdr (cdr mylist))

(cdr (cdr (cdr mylist)))

;but you can't (car (car mylist)) -- so, 
(setf `(((5) pant) orange))

;now you you can:
(car (car (car mylist)))

;cons
(setf laundry `(pants shirt))

;order matters:
(cons 'hat laundry) ;list with hat at front

(cons laundry 'hat) ;cell holding laundry list in left half and hat in right half

;this means that:
(cons 1 (cons 2 (cons 3 nil)))
;and
`(1 2 3)
;are equivalent

;More List Manipulation
;illustrate the difference between quote and list
(list 1 2 (* 5 5))
;vs
(quote (1 2 (* 5 5))) ;and
`(1 2 (* 5 5))

(listp 5)

(listp '(1 2 3))

;push and pop behave as anticipated
(setf mylist `(5 pants orange))

(push `)