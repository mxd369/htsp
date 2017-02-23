;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
#|

Exercise 1.

The direct goal of this exercise is to create an expression that
computes the distance of some specific Cartesian point (x,y)
from the origin (0,0).

The indirect goal is to introduce some basic programming habits,
especially the use of the interactions area to develop expressions.

|#

;; Values for x and y given:
;(define x 3)
;(define y 4)

(define x 12)
(define y 5)

; distance formula
(sqrt (+ (sqr x) (sqr y)))