;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname stepper-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

;; stepper-start.rkt

(+ (* 3 2) 1)
; (6) 1
; 7

(define (max-dim img)
  (if (> (image-width img) (image-height img))
      (image-width img)
      (image-height img)))

(max-dim (rectangle 10 20 "solid" "blue"))

#|

(define (max-dim rectangle 10 20 "solid" "blue")
  (if (> (10) (20))
      (image-width rectangle 10)
      (image-height rectangle 20)))

(define (max-dim rectangle 10 20 "solid" "blue")
  (if (false)
      (image-width rectangle 10)
      (image-height rectangle 20)))
20

|#

;rectangle width height