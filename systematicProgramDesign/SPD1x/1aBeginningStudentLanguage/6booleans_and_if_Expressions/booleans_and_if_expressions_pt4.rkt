;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname booleans_and_if_expressions_pt4) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;rectangle width height

;(= 1 2)
;(= 1 1)
;(> 3 9)

;(string=? "foo" "bar")

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))

;and primitive

;is I1 taller than I2
(> (image-height I1) (image-height I2))
;is I1 skinnier than I2
(< (image-width I1) (image-width I2))

;to form and expression:
;(and <expr1> <expr2> ...)
;all <exprn> must produce Boolean

(and (> (image-height I1) (image-height I2))
     (< (image-width I1) (image-width I2)))

;to evaluate and expression:

;evaluate <exprn> one at a time:
;- if an <exprn> produces false immediately produce false
;- if all <exprn> produce true then produce true

;or primitive
;not primitive

;and
;or
;not