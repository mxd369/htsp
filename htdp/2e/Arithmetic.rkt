;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Arithmetic) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; (primitive-operation-op argument argument)
;; (operating-for-adding plain_number plain_number)

;; Primitive Expression
(+ 1 2)

(+ 1 (+ 1 (+ 1 1) 2) 3 4 5)


;; == two expressions are equal

; Four forms of atomic data of BSL
; - numbers
; - strings
; - images
; - Boolean

;; atomic analogy to Physics, simplest form of data,
;; function that combine several pieces of atomic pieces of data into another one,
;; retrieve 'properties' of them, also in terms of atomic data.