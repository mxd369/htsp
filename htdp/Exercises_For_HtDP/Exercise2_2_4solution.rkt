;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise2_2_4solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; convert3 : number number number -> number
;; builds a three digit number from its digits

;; EXAMPLES
;; convert3 of 1, 2, and 3 produces 321.
;; convert3 of 5, 3, and 9 produces 935.

(define (convert3 ones tens hundreds)
  (+ ones
     (* 10 tens)
     (* 100 hundreds)))

;; EXAMPLES TURNED INTO TESTS
(convert3 1 2 3) "should be" 321
(convert3 5 3 9) "should be" 935


#|

;; step 0

(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
(convert3 1 2 3)

;; step 1

(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
(+ 1 (* 10 2) (* 100 3))

;; step 2

(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
(+ 1 20 (* 100 3))

;; step 3

(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
(+ 1 20 300)

;; step 4

(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
321

;; step 5

(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
321
"should be"
321
(+ 5 (* 10 3) (* 100 9))

;; step 6

(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
321
"should be"
321
(+ 5 30 (* 100 9))

;; step 7

(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
321
"should be"
321
(+ 5 30 900)

;; step 8

(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
321
"should be"
321
935

;; step 9

All of the definitions have been successfully evaluated.

|#