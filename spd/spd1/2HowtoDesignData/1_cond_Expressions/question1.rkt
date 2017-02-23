;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname question1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;; Number -> String
;; determine if a number is negative, positive or zero
(check-expect (mag 2) "positive")
(check-expect (mag -7) "negative")
(check-expect (mag 0) "zero")

; (define (mag x) "zero") ;stub
#;
(define (mag x)           ;template
  (... x))

#;
(define (mag x)
  (if (> x 0)
      "positive"
      (if (= x 0)
          "zero"
          "negative")))

#|
Build a cond expression equivalent to the above nested if
expressions by dragging each of the parts below into the proper place in the cond.
|#

#|
(define (aspect-ratio img)
  (cond [Q A]
        [Q A]
        [Q A]))
|#

(define (mag x)
  (cond [(> x 0) "positive"]
        [(= x 0) "zero"]
        [else "negative"]))