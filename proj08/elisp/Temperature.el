;;; Temperature.el is the class Temperature
;;; Completed by Shion Fukuzawa, for CS 214 at Calvin College
;;; June 23, 2018
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun Temp(myDegrees myScale)
  (if (= (validate myDegrees myScale) 1)
      (list myDegrees myScale)
    (princ "Error: Init(): invalid temperatures")))
Temp



(defun getDegrees(atemp)
  (car atemp))
getDegrees


(defun getScale(atemp)
  (car (cdr atemp)))
getScale



(defun toCelsius (atemp)
  (setq scale (upcase (getScale atemp)))
  (if (string= scale "F")
      (setq convertedDegrees (/ (- (getDegrees atemp) 32) 1.8))
    (if (string= scale "K")
(setq convertedDegrees (- (getDegrees atemp) 273.15))
      (setq convertedDegrees (getDegrees atemp))))
  (Temp convertedDegrees "C"))
toCelsius



(defun toFahrenheit (atemp)
  (setq scale (upcase (getScale atemp)))
  (if (string= scale "C")
      (setq convertedDegrees (+ 32 (* (getDegrees atemp) 1.8)))
    (if (string= scale "K")
(setq convertedDegrees (+ 32 (* (/ 9 5) (- (getDegrees atemp) 273.15))))
      (setq convertedDegrees (getDegrees atemp))))
  (Temp convertedDegrees "F"))
toFahrenheit


(defun toKelvin (atemp)
  (setq scale (upcase (getScale atemp)))
  (if (string= scale "F")
      (setq convertedDegrees (+ (/ (- (getDegrees atemp) 32) 1.8) 273.15))
  (if (string= scale "C")
	  (setq convertedDegrees (+ (getDegrees atemp) 273.15))
      (setq convertedDegrees (getDegrees atemp))))
  (Temp convertedDegrees "K"))
toKelvin



(defun fromString()
  (setq inputList (split-string (read-from-minibuffer "Enter Temperature: ")))
  (setq scale (getScale inputList))
  (setq degrees (string-to-number (getDegrees inputList)))
  (Temp degrees scale))
fromString



(defun toString (atemp buf)
  (princ (getDegrees atemp) buf)
  (princ " ")
  (princ (upcase (getScale atemp)) buf))
toString



(defun raise (atemp degrees)
  (Temp (+ (getDegrees atemp) degrees) (getScale atemp)))
raise



(defun lower (atemp degrees)
  (Temp (- (getDegrees atemp) degrees) (getScale atemp)))
lower



 (defun equalTo(theTemp otherTemp)
   (cond
    ((string= (getScale theTemp) "C")
     (= (getDegrees theTemp) (getDegrees (toCelsius otherTemp))))
    ((string= (getScale theTemp) "F")
     (= (getDegrees theTemp) (getDegrees (toFahrenheit otherTemp))))
    ((string= (getScale theTemp) "K")
     (= (getDegrees theTemp) (getDegrees (toKelvin otherTemp))))
    (t "Invalid Input")))
equalTo




(defun lessThan(theTemp otherTemp)
  (cond
   ((string= (getScale theTemp) "C")
    (if (< (getDegrees theTemp) (getDegrees (toCelsius otherTemp))) 1 0))
   ((string= (getScale theTemp) "F")
    (if (< (getDegrees theTemp) (getDegrees (toFahrenheit otherTemp))) 1 0))
   ((string= (getScale theTemp) "K")
    (if (< (getDegrees theTemp) (getDegrees (toKelvin otherTemp))) 1 0))
   (t "Invalid Input")
   )
  )
lessThan




(defun validate(degrees myScale)
  (setq scale (upcase myScale))
  (cond ((string= scale "F")
(if (>= degrees -351.67)
   (progn
     (princ "Error: validate() F: less than absolute 0")
     0)))
((string= scale "C")
  (if (>= degrees -273.15)
    (progn
      (princ "Error: validate() C: less than absolute 0")
      0)))
  ((string= scale "K")
   (if (>= degrees 0)
        (progn
       (princ "Error: validate() K: less than absolute 0")
       0)))
  (t (error "Error validate(): not a valid scale"))))
validate



(byte-compile-file "/Temperature.el")
