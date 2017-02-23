;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Mixing_it_up) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(string-length "hello")
(string-ith "abcdefghijklmnopqrstuvwxyz" 25)

;number -> string

(+ (string-length (number->string 42)) 2)

;(+ (string-length 42) 1)

(define str "helloworld")
(define ind "0123456789")
(define i 5)
