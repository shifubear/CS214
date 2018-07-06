;;; nameTester.el simulates and tests an e-LISP Name type.
;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;; Completed by: Shion Fukuzawa, CS 214 at Calvin College
;;; Date: April 14, 2018


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Name constructs a name from three strings.      ;;
;;; Receive: first, middle and last, three strings. ;;
;;; Return: the triplet (first middle last).        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun Name (first middle last)
  "Constructs a name from three strings."
  (list first middle last))
Name



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst extracts the first name of a name object.;
;;; Receive: theName, a Name.                       
;;; Return: the first string in theName.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getFirst (theName)
  "Extracts the first name of a name object."
  (car theName))
getFirst



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle extracts the middle name of a name object.
;;; Receive: theName, a Name.                      
;;; Return: the second string in theName.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getMiddle (theName)
  "Extracts the middle name of a name object."
  (car (cdr theName)))
getMiddle


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast extracts the last name of a name object.
;;; Receive: theName, a Name.                    
;;; Return: the third string in theName.       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getLast (theName)
  "Extracts the last name of a name object."
  (car (cdr (cdr theName))))
getLast



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName returns a full name in F-M-L order. 
;;; Return: myFirst, myMiddle, myLast.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getFullName (theName)
  "Returns a full name in F-M-L order."
  (concat (getFirst theName) " " (getMiddle theName) " " (getLast theName)))
getFullName


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi returns a full name in L-F-M(initial) order. 
;;; Return: myFirst, myMiddle, myLast.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun lfmi (theName)
  (concat (getLast theName) ", " (getFirst theName) " " (substring (getMiddle theName) 0 1)))
lfmi


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName returns the input and changes the name 
;;; Receive: theName           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun readName (theName)
  (setf (nth 0 theName)(read-string "First: "))
  (setf (nth 1 theName)(read-string "Middle: "))
  (setf (nth 2 theName)(read-string "Last: ")))
readName

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName displays a name object.         
;;; Receive: theName, a Name,                 
;;;          buffer, the name of a buffer.   
;;; Output: the strings in theName to buffer. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun printName (theName buffer)
  "Displays a name object."
  (princ (getFullName theName) buffer)
  theName)
printName



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver for our Name functions. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(progn
  (require 'cl)                              ; assert
  (setq aName (Name "John" "Paul" "Jones"))  ; build a Name

  (assert (equal (getFirst aName) "John" ))  ; test it
  (assert (equal (getMiddle aName) "Paul" ))
  (assert (equal (getLast aName) "Jones" ))
  (assert (equal (getFullName aName) "John Paul Jones" ))

  ;;test the lfmi function
  (assert (equal (lfmi aName) "Jones, John P"))

  ;;Test the read function
  (readName aName)
  
  (setq buf (get-buffer "nameTester.el"))    ; buf = this buffer
  (assert (eq (printName aName buf) aName) ) ; output
  (terpri buf)                               ; newline
  (princ "All tests passed!" buf)            ; feedback
  (terpri buf))                              ; newline
Shion M Fukuzawa
All tests passed!
t










 




