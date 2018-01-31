;;; rectangle_area.el computes the area of a rectangle. 
;;;                                                                     
;;; Input: The width and height of the rectangle.                       
;;; Precondition: The width and height are positive numbers.    
;;; Output: The area of the rectangle.                                     
;;; 
;;; By: Shion Fukuzawa
;;; Date: January 31, 2018
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                   

;;; function rectangleArea computes a rectangle's area, given its width and height.     
;;; Parameters: w, a number.
;;; Parameters: h, a number.
;;; Precondition: w, h >= 0.                                               
;;; Returns: the area of the rectangle whose width is w and height is h.                   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                  
(defun rectangleArea (width height)
  "Compute the area of a rectangle, passed its width and height."
  (* width height))         

(defun rectangle_area(w h)
 "Compute the area of a rectangle, given its width and height interactively."
  (interactive "nEnter a rectangle's width: ")        
  (setq area (rectangleArea w h))      
  (message "The circle's area is %f." area))
