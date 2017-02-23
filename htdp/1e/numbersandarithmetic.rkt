;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname numbersandarithmetic) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(+ 5 5)  ; 10
(+ -5 5) ;  0
(+ 5 -5) ;  0
(- 5 5)  ;  0
(* 3 4)  ; 12
(/ 8 12) ;0.6

;; nested expressions:
(* (+ 2 2) (/ (* (+ 3 5) (/ 30 10)) 2))
;(* (+ 2 2) (/ (* (+ 3 5) (3)) 2))
;(* (+ 2 2) (/ (* 8 3) 2))
;(* (+ 2 2) (/ (24) 2))
;(* (+ 2 2) (/ 24 2))
;(* (4) (12))
;(* 4 12)
;48

;; Scheme Expressions
; (operation A ... B)

; square root
;(sqrt A)

; exponent
;(expt A B)

; remainder
;(remainder A B)

; Natural Logarithm of A
;(log A)

; sine of A radians
;(sin A)

(/ 44 14)

(sqrt 2)

(- #i1.0 #i0.9)

(- #i1000.0 #i999.9)