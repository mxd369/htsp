;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname expressions) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))

;(+ 3 4)
;
;(+ 3 (* 2 3))
;
;(/ 12 (* 2 3))

(sqr 3)

(sqrt 16)

;call to a primitive
;operator
;operands

(+ 2 (* 3 4) (- (+ 1 2) 3))

; To evaluate a primitive call: (1) first reduce operands to values (2) then appy primitive to the values
; (1) (* 3 4) = 12
; (+ 2 12    (- (+ 1 2) 3))
; (+ 2 12    (- 3       3))
; (+ 2 12       0)
;  14