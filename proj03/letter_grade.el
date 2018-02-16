;;; letter_grade.el is a driver for function letterGrade.
;;; Begun by: Shion Fukuzawa, for CS 214 at Calvin College.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; letterGrade returns the code for a given academic year.              ;;;
;;; Receive: grade, an integer.                                          ;;;
;;; Precondition: 0 <= grade <= 100                                      ;;;
;;; Return: the letter grade corresponding to grade.                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun letterGrade (grade)
  "Takes a numerical grade and converts it to the corresponding letter"
  (cond ((< grade 60) "F")
	((< grade 70) "D")
	((< grade 80) "C")
	((< grade 90) "B")
	((<= grade 100) "A"))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function                         ;;;
;;; input: grade                          ;;;
;;; output: letter corresponding to grade ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun main (grade)
  (interactive "sEnter your numerical grade: ")  ; read grade
 (message "%s" (letterGrade (string-to-number grade))))             ; display its letter


