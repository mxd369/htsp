;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname booleans_and_if_expressions_pt2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;rectangle width height

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))

;write an if expression that determines the shape of I1

(if (< (image-width I1)
       (image-height I1))
    "tall"
    "wide")

;highlighted in black means....

(if (< (image-width I2)
       (image-height I2))
    "tall"
    "wide")