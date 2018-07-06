;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; file: Lab10.lisp
;;; Name: Shion Fukuzawa for CS 214 at Calvin college
;;; Date: June 24, 2018
;;; Purpose: To demonstrate how lambda and functions work 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(lambda (x y z i) (max (abs x) (abs y) (abs z) (abs i) ))

((lambda (x y z i) (max (abs x) (abs y) (abs z) (abs i ))) 5 -20 33 21)

(lambda (x y z) (+ x y z))
((lambda (x y z) (+ x y z)) 5 10 15)
30



(lambda (x) (null x))
((lambda (x) (null x)) 25)
nil



(lambda () 17.2)
((lambda nil 17.2) )
17.2



(defun sum-squares (list)
  (apply '+ (mapcar '(lambda (x) (* x x)) list)))
sum-squares


(sum-squares '(1 2 3))
14
(sum-squares '(1 2 3 4 5))
55
(sum-squares '(-1 -2 -3 0 1))
15











