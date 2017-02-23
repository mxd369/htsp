;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Expressions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Operators * + - /
; to form an Expression: (<primitive> <expression>...)

; +
(+ 2 2)
; -
(- 2 2)
; /
(/ 2 2)
; *
(* 2 2)
; nested
(/ 2 (* 2 2))
; square
(sqr 3)
; square-root
(sqrt 16)

; write an expression that produces the value of ? for this triangle where the other two sides have lengths 3 and 4