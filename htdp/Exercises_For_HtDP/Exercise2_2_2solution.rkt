;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise2_2_2solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; signature : signature
;; purpose

;; examples without check-expect
;; ex 1
;; ex 2
;; ex 3

;; function

;; examples turned into tests

;; final test




;; The dollar/euro conversion rate was roughly 1.17 euros per dollar
;; when the euro was introduced on January 1, 1999.
;; (source: The Economist).

;; dollar->euro : number -> number
;; computes the value of d dollars in euros

;; EXAMPLES
;; one dollar is 1.17 euros
;; one dollar is 2.34 euros

(define (dollar->euro d)
  (* 1.17 d))

;; EXAMPLES TURNED INTO TESTS
(dollar->euro 1) "should be" 1.17
(dollar->euro 2) "should be" 2.34