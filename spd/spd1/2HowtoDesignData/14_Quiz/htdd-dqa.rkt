;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname htdd-dqa) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; HtDD Design Quiz

;; Age is Natural
;; interp. the age of a person in years
(define AO 18)
(define A1 25)

#;
(define (fn-for-age a)
  (... a ))

;; Template rules used:
;; - atomic non-distinct: Natural

;; Problem 1:

;; Consider the above data definition for the age of a person.

;; Design a function called teenage? that determines whether a person
;; of a particular age is a teenage (i.e., between the ages of 13 and 19).

(check-expect (teenage? 12) false)
(check-expect (teenage? 13) true)
(check-expect (teenage? 15) true)
(check-expect (teenage? 19) true)
(check-expect (teenage? 20) false)

;; Age -> Boolean
;; return true, if the age is between 13-19
#;
(define (teenager? a) false) ; stub

#;
(define (teenager? a) ; template
  .. a)

(define (teenager? a)
  (<= 13 a 19))

; Problem 2:
;
; Desing a data definition called MonthAge to represent a person's age in months.

;; MonthAge is Natural
;; interp. the age of a person in months
(define MA1 35)
(define MA2 3)

#;
(define (fn-for-month-age a)
  (... a))

;; Template rules used:
;; - atomic non-distinct: Natural

;; Problem 3:
;
; Design a function called months-old that takes a person's age in years
; and yields that person's age in months
;
(check-expect (months-old 0) 0)
(check-expect (months-old 1) 12)
(check-expect (months-old 2) 24)

;; Age -> MonthAge
;; convers age in years into age in months
#;
(define (months-old a) 0) ; stub

#;
(define (months-old a)    ; template
    ... a)

(define (months-old a)
  (* 12 a))

; Problem 4:
;
; Consider a video game where you need to represent the health of your character.
; The only thing that matters about their health is:
;
; - if they are dead (which is shockingly poor health)
; - if they are alive then they can have 0 or more extra lives
;
; Design a data definition called Health to represent the health of your character.
;
; Design a function called increase-health that allows you to increase the lives of a character.
; The function should only increase the lives of the character if the character is not dead,
; otherwise the character remains dead.

;; Health is one of:
;; - "dead"
;; - Natural
;; interp. "dead" means a dead player, a number represents the extra lives of the player
(define H1 "dead")
(define H2 3)

#;
(define (fn-for-health h)
  (cond [(number? n) ..]
        (else ..)))

;; Template rules used:
;; - one of: 2 cases
;; - atomic non-distinct: Natural
;; - atomic distinct: "dead"

;; Health -> Health
;; increases the number of lives for the player with one, except when the player is already dead
(check-expect (increase-health 0) 1)
(check-expect (increase-health "dead") "dead")
(check-expect (increase-health 1) 2)

#;
(define (increase-health h) 0) ;stub

#;
(define (fn-for-health h) ; template
  (cond [(number? n) ..]
        (else ..)))

(define (increase-health h)
  (cond [(number? h) (add1 h)]
        (else h)))