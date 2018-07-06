;;; mylist.el is a "module" of list operations.
;;;
;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;; Completed by: Shion Fukuzawa, CS 214 at Calvin College. 
;;; Date: June 23, 2018

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Max2 finds the maximum of two values.       ;;
;;; Receive: val1, val2, two values.            ;;
;;; PRE: val1 and val2 can be compared using <. ;;
;;; Return: the maximum of val1 and val2.       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun Max2 (val1 val2)nil
  (if (> val1 val2)
      val1
    val2))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Max finds the maximum value in a list.         ;;
;;; Receive: aList, a list of values.              ;;
;;; PRE: values in aList can be compared using <.  ;;
;;; Return: the maximum value in aList.            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun Max (aList)
  (if (listp aList)
      (if (= (length aList) 1)
	  (car aList)
	(Max2 (car aList) (Max (cdr aList))))
    nil))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;Search finds the position of an item in the list
;;;Recieve: aList, a list of values, value, the value to search for,
;;; and counter, an iterator 
;;;Return: The posistion of item given 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun search (aList value counter)
  (if (listp aList)
      (if (not (null aList))
	  (if (/= (car aList) value)
	      (searchlist (cdr aList) value (+ 1 counter))
	    (princ counter)
	    )
	(princ -1)
	)
    )
  )
