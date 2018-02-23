;;; factorial.el computes the factorial of n. 
;;;                                                                     
;;; Input: A non-negative integer n.                                    
;;; Precondition: n is non-negative.                      
;;; Output: n factorial.                                     
;;; 
;;; By: Shion Fukuzawa, for CS214 at Calvin College
;;; Date: February 23, 2018
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                   

;;; function factorial computes the factorial of n, given integer n.     
;;; Parameters: n, a number.                                            
;;; Precondition: n >= 0.                                               
;;; Returns: n factorial.                   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                  
(defun factorial (n)
  "Compute the factorial of n, given integer n."
  (if (> n 0)
   (* n (factorial (- n 1)))
    1))

(defun Factorial(n)
 "Compute the area of a circle, given its radius interactively."
  (interactive "nEnter an integer n: ")        
  (setq fact (factorial n))      
  (message "%f! = %f." n fact))

