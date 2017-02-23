;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname strings_and_images) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;strings and images

;"apple"
;"Ada"
;(string-append "Ada" " " "Lovelace")
;"123"
;(+ 123)
;(+ 1 "123")

(string-length "apple")
(substring "Caribou" 2 4)

;0-based indexing
;"012345678"

(substring "012345678" 2 4)
(substring "Caribou" 0 3)