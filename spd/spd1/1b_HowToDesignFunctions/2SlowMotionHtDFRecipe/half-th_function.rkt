;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname half-th_function) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; What does the half-th function do?

(define WIDTH 100)
(define HEIGHT 100)

(define (half-tw x)
  (+ x (/ (- WIDTH x) 2)))

;; Number -> Number
;; given a y coordinate, produce y coord half way between it and HEIGHT
(check-expect (half-th 0) (/ HEIGHT 2))
(check-expect (half-th 20) (+ 20 (/ (- HEIGHT 20) 2)))

(define (half-th y)
  (+ y (/ (- HEIGHT y) 2)))