;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise2_2_3solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; triangle : number number -> number
;; calculates the area of a triangle, given its base and height

;; EXAMPLES:
;; if the base is 10 and the height is 5, the area of the triangle is 25.
;; if the base is 2 and the height is 5, the area of the triangle is 5.

(define (triangle base height)
  (* 1/2 base height))

;; EXAMPLES TURNED INTO TEST CASES:
(triangle 10 5) "should be" 25
(triangle 2 5) "should be" 5