;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise2_2_5solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (f0 n)
  (+ (/ n 3) 2))

(f0 2) "should be" 8/3
(f0 5) "should be" 11/3
(f0 9) "should be" 5

;; 1.

(define (f1 n)
  (+ (* n n) 10))
(f1 2) "should be" 14
(f1 9) "should be" 91

;; 2.

(define (f2 n)
  (+ (* 1/2 n n) 20))
(f2 2) "should be" 22
(f2 9) "should be" 60.5

;; 3.

(define (f3 n)
  (- 2 (/ 1 n)))
(f3 2) "should be" 1.5
(f3 9) "should be" 17/9