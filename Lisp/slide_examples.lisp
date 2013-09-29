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

(push `green mylist)

mylist

(pop mylist)

Mylist

;append contatenates lists
(append `(a b c) `(1 2 3))

;contrast with cons
(cons `(a b c) `(1 2 3))

;remove and member also behave as expected, except,
;returns tail starting with element if found:
;lists not modified in place
(setf mylist `(shoes pants shirt))

(member `pants mylist)

(member `pants (remove `pants mylist))

;no surprises with length
(length mylist)

;Eval: the big one -- evaluates a string as though it were code
;it's what's being run whenever we hit return
;think of quote operator as the anti-eval
(eval `(* 3 4))

(setf x (*3 4))

(setf x `(*3 4))

(eval x)

;Arithmetic
(setf x 5)

(incf x)

(decf x)

;Property List
(setf (get 'x 'y) 4)

(get 'x 'y)

;Let
(let ((a 5))
 (+ a 1))

;Conditionals
(if t 10 20)

(if nil 10 20)

(if nil 10)

;Functions
(defun bringtowel (laundrylist)
 (append laundrylist '(towel)))

(setf func1 (lambda(x) (+ x 3)))

(setf func2 (lambda(x) (* x 10)))

(defun call (x y) (funcall x y))

(call func1 3)
￼￼￼￼
(call func2 10)

;Apply vs funcall:
(funcall #'+ 3 4)

(apply #'+ 3 4 '(3 4))

;Mapping functions
(mapcar func1 '(1 2 3))

;Equals
;Code source: http://stackoverflow.com/questions/4427321/setting-up-a-equal-function-in-common-lisp-using-only-eq
(defun list-equality (list1 list2) 
 (if (and (not (null list1))
  (not (null list2)))
 (let ((a (car list1)) (b (car list2)))
  (cond ((and (listp a) (listp b))
   (and (list-equality a b)
    (list-equality (cdr list1) (cdr list2))))
  (t
   (and (eq a b)
    (list-equality (cdr list1) (cdr list2))))))
 (= (length list1) (length list2))))


















