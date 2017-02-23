;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise3_3_1refractoredredo) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
#|
Exercise 3.3.1.

The United States uses the English system of (length) measurements.
The rest of the world uses the metric system.
So, people who travel abroad and companies that trade with foreign
partners often need to convert English measurements to metric ones and vice versa.

Here is a table that shows the six major units of
length measurements of the English system:12

English                	metric
1 inch	=	2.54	cm
1 foot	=	12	in.
1 yard	=	3	ft.
1 rod	=	5(1/2)	yd.
1 furlong	=	40	rd.
1 mile	=	8	fl.

Develop the functions:
inches->cm,
feet->inches,
yards->feet,
rods->yards,
furlongs->rods,
miles->furlongs.

This set of following functions to create can lean on the above but I decided to make them their own constants
feet->cm,
yards->cm,
rods->inches,
miles->feet.
|#

;;; instead of multiplying values together, separate out
;; for example ...
;; miles->feet : number -> number
;; to determine the number of feet in some number of miles
#|
(define (miles->feet miles)
  (yards->feet 
   (rods->yards
    (furlongs->rods
     (miles->furlongs 
      miles)))))
|#

;; CONSTANTS
(define inches->cm      2.54)
(define feet->inches    12)
(define yards->feet     3)
(define rods->yards     5.5)
(define furlongs->rods  40)
(define miles->furlongs 8)
(define feet->cm        (* feet->inches inches->cm))
(define yards->cm       (* yards->feet feet->inches inches->cm))
(define rods->inches    (* rods->yards yards->feet feet->inches))
(define miles->feet     (* miles->furlongs furlongs->rods rods->yards yards->feet))


;; FUNCTIONS

;; inches->cm_ : number->number
;; convert a number inches to centimeters
(define (inches->cm_ inches)
  (* inches inches->cm))

;; feet->inches_ : number->number
;; convert a number of feet to inches
(define (feet->inches_ feet)
  (* feet feet->inches))

;; yards->feet_ : number->number
;; convert a number of yards to feet
(define (yards->feet_ yards)
  (* yards yards->feet))

;; rods->yards_ : number->number
;; convert a number of rods to yards
(define (rods->yards_ rods)
  (* rods rods->yards))

;; furlongs->rods_ : number->number
;; convert a number of furlongs to rods
(define (furlongs->rods_ furlongs)
  (* furlongs furlongs->rods))

;; miles->furlongs_ : number->number
;; convert a number of miles to furlongs
(define (miles->furlongs_ miles)
  (* miles miles->furlongs))

;; feet->cm_ : number->number
;; convert a number of feet to cm
(define (feet->cm_ feet)
  (* feet feet->cm))

;; yards->cm_ : number->number
;; convert a number of yards to cm
(define (yards->cm_ yards)
  (* yards yards->cm))

;; rods->inches_ : number->number
;; convert a number of rods to inches
(define (rods->inches_ rods)
  (* rods rods->inches))

;; miles->feet_ : number->number
;; convert a number of
(define (miles->feet_ miles)
  (* miles miles->feet))

;; EXAMPLES AS TESTS
(inches->cm_       .5) "Should be" 1.27
(inches->cm_      1.0) "Should be" 2.54

(feet->inches_     .5) "Should be" 6
(feet->inches_    1.0) "Should be" 12

(yards->feet_      .5) "Should be" 1.5
(yards->feet_     1.0) "Should be" 6

(rods->yards_      .5) "Should be" 2.75
(rods->yards_     1.0) "Should be" 5.5

(furlongs->rods_   .5) "Should be" 20
(furlongs->rods_  1.0) "Should be" 40

(miles->furlongs_  .5) "Should be" 4
(miles->furlongs_ 1.0) "Should be" 8

(feet->cm_         .5) "Should be" 15.24
(feet->cm_        1.0) "Should be" 30.48

(yards->cm_        .5) "Should be" 45.72
(yards->cm_       1.0) "Should be" 91.44

(rods->inches_     .5) "Should be" 99
(rods->inches_    1.0) "Should be" 198

(miles->feet_      .5) "Should be" 2640
(miles->feet_     1.0) "Should be" 5280

