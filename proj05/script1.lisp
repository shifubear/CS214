;;; roots.el calculates the two roots of a quadratic
;;;
;;; Input: a, a double, the coefficient of x^2,
;;;        b, a double, the coefficient of x,
;;;        c, a double, the coefficient of 1
;;; Output: The roots root1 and
;;;                   root2 of the given quadratic
;;;
;;; By: Shion Fukuzawa, for CS 214 at Calvin College.
;;; Date: February 28, 2018
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;
;;; roots() calculates the two roots of a quadratic.  
;;; Receive: a, a double, the coefficient of x^2,
;;;          b, a double, the coefficient of x,
;;;          c, a double, the coefficient of 1
;;; Return: The roots root1 and
;;;                   root2 of the given quadratic
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun roots (a b c)
  (setq arg (- (* b b) (* 4 a c)))
  (if (/= a 0)
      (if (>= arg 0)
	  (list (/ (+ (- 0 b) (sqrt arg)) (* 2 a))
		(/ (- (- 0 b) (sqrt arg)) (* 2 a)))
	(message "*** roots(): b^2 - 4ac is negative!"))
      (message "*** roots(): a is zero!")))
roots

(roots 1 -2 1)
(1.0 1.0)

(roots 1 1 1)
"*** roots(): b^2 - 4ac is negative!"

(roots 0 1 1)
"*** roots(): a is zero!"


(defun main (a b c)
  (message "Enter the quadratic to find the roots: \n")
  (interactive "nEnter the coefficient of x^2: \nnEnter the coefficient of x: \nnEnter the coefficient of 1: \n")
  (setq result (roots a b c))
  (setq part1 (elt result 0))
  (setq part2 (elt result 1))
  (message "The first root is %s and the second root is %s" part1 part2))
main










    
