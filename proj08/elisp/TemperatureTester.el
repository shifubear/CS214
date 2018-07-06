;;; TemperatureTester.el is the class Temperature
;;; Completed by Shion Fukuzawa, for CS 214 at Calvin College 
;;; June 23, 2018                                          
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq load-path (cons "." load-path))

"This is the driver for the Temperature Class"
(progn
  (load "/home/gam6/214/projects/08/Lisp/Temperature.el")
 
  (message "Enter a base Temperature: ")
  (setq baseTemp (fromString))
  (message "Enter a limit Temperature: ")
  (setq limitTemp (fromString))
  (setq stepVal (string-to-number
   (read-from-minibuffer "Enter the stepVal: ")))


  (setq buf (get-buffer "Temperature.el"))
  (terpri buf)
  (princ "Celsius | Fahrenheit |  Kelvin")
  (while (= (lessThan baseTemp limitTemp) 1)
    (toString (toCelsius baseTemp) buf)
    (princ "   |   ")
    (toString (toFahrenheit baseTemp) buf)
    (princ "   |   ")
    (toString (toKelvin baseTemp) buf)
    (terpri buf)
    (setq baseTemp (raise baseTemp stepVal)))
  
  (terpri buf)
  (princ "All tests passed!" buf)
  (terpri buf))




