;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise2_2_1solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; fahrenheit->celsius : number -> number
;; computes the celsius equivalent of t

;; EXAMPLES
;; 32 degrees fahrenheit is 0 degrees celsius
;; 212 degrees fahrenheit is 100 degrees celsius
;; -40 degrees fahrenheit is -40 degrees celsuis

(define (fahrenheit->celsius t)
  (* 5/9 (- t 32)))

;; EXAMPLES TURNED INTO TESTS
(fahrenheit->celsius 32) "should be" 0
(fahrenheit->celsius 212) "should be" 100
(fahrenheit->celsius -40) "should be" -40


;; test
(fahrenheit->celsius 100)