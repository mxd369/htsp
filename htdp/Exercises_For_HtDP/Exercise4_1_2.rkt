;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise4_1_2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; for (a) x = 4
; (b) x = 2
; and (c) x = 7/2


;; 1
;(> x 3)
;; 1a
(> 4 3)                            ;true
;; 1b
(> 2 3)                            ;false
;; 1c
(> (/ 7 2) 3)                      ;true


;; 2
;(and (> 4 x) (> x 3))
;; 2a
(and (> 4 4) (> 4 3))              ;(and (false) (true)) ;false
;; 2b
(and (> 4 2) (> 2 3))              ;(and (true) (false)) ;false
;; 2c
(and (> 4 (/ 7 2)) (> (/ 7 2) 3))  ;(and (true) (true))  ;true


;; 3
;(= (* x x) x)
;; 3a
(= (* 4 4) 4)                      ;false
;; 3b
(= (* 2 2) 2)                      ;false
;; 3c
(= (* (/ 7 2) (/ 7 2)) (/ 7 2))    ;false