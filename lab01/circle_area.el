;;; circle_area.el computes the area of a circle. 
;;;                                                                     
;;; Input: The radius of the circle.                                    
;;; Precondition: The radius is a positive number.                      
;;; Output: The area of the circle.                                     
;;; 
;;; Begun by: Dr. Adams, for CS 214 at Calvin College.
;;; Completed by: Shion Fukuzawa 
;;; Date: January 31, 2018
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                   

;;; function circleArea computes a circle's area, given its radius.     
;;; Parameters: r, a number.                                            
;;; Precondition: r >= 0.                                               
;;; Returns: the area of the circle whose radius is r.                   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                  
(defun circleArea (radius)
  "Compute the area of a circle, passed its radius."
  (defconst PI 3.1415927)            
  (* PI (* radius radius)))         

(defun circle_area(r)
 "Compute the area of a circle, given its radius interactively."
  (interactive "nEnter a circle's radius: ")        
  (setq area (circleArea r))      
  (message "The circle's area is %f." area))
