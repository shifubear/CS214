;;; max.el searches a list for its maximum value.
;;;
;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;; Completed by: Shion Fukuzawa, CS 214 at Calvin College. 
;;; Date: June 23, 2018

(setq load-path (list "."))              ; setup load-path to WD
(".")

(load "mylist.elc")                      ; load module
t


;;;;;;;;;;;;;;;;;;;;;;;;;
;;; test function Search. ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(progn
  (let
      ((buf (get-buffer "proj09.el"))       ; setup for output
       (list1 (list 99 88 77 66 55))     ; max is first
       (list2 (list 55 66 77 88 99))     ; max is last
       (list3 (list 55 77 99 88 66))
       (list4 (list 77 55 66 22 88)))    ; max in middle

    (princ list1 buf)                    ; print list1
    (terpri buf)                         ;  and a newline

    (princ list2 buf)                    ; print list2
    (terpri buf)                         ;  and a newline

    (princ list3 buf)                    ; print list3
    (terpri buf)                         ;  and a newline

    (princ list4 buf)
    (terpri buf)
  
    (princ "The max in list 1 is " buf)  ; print the max
    (princ (Max list1) buf)              ;  in list1
    (terpri buf)                         ;  and a newline
    (princ "The max in list 2 is " buf)  ; print the max
    (princ (Max list2) buf)              ;  in list2
    (terpri buf)                         ;  and a newline
    (princ "The max in list 3 is " buf)  ; print the max
    (princ (Max list3) buf)
    (terpri buf)
    (princ "The max in list 4 is " buf)
    (princ (Max list4) buf)
    (terpri buf)
    (princ "The item 99 in list 1 is at location: ")
    (princ (searchlist list1 99 0) buf)
    (terpri buf)
    (princ "The item 99 in list 2 is at location: ")
    (princ (searchlist list2 99 0) buf)
    (terpri buf)
    (princ "The item 99 in list 3 is at location: ")
    (princ (searchlist list3 99 0) buf)
    (terpri buf)
    (princ "The item 99 in list 4 is at location: ")
    (princ (searchlist list4 99 0) buf)
    (terpri buf)))
(99 88 77 66 55)
(55 66 77 88 99)
(55 77 99 88 66)
(77 55 66 22 88)
The max in list 1 is 99
The max in list 2 is 99
The max in list 3 is 99
The max in list 4 is 88
The item 99 in list 1 is at location: 0
The item 99 in list 2 is at location: 4
The item 99 in list 3 is at location: 2
The item 99 in list 4 is at location: -1
t





