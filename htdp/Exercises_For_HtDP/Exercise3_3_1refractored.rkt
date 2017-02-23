;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise3_3_1refractored) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;CONSTANTS
(define in_to_cm 2.54)
(define ft_to_in 12)
(define yd_to_ft 3)
(define rd_to_yd 5.5)
(define fl_to_rd 40)
(define mi_to_fl 8)
(define ft_to_cm 30.48)
(define yd_to_cm 91.44)
(define rd_to_in 198)
(define mi_to_ft 5280)

;; in_to_cm : number -> number
;; convert inches to centimeters
; .5 inch is 1.27 cm
; 1 inch is 2.54 cm
; 2 inches is 5.08 cm
(define (inches_to_cm inches)
  (* inches in_to_cm))

;; feet_to_inches : nummber -> number
;; convert feet to inches
; .5 foot is 6 inches
; 1 feet(foot) is 12 inches
; 2 feet is 24 inches
(define (feet_to_inches ft)
  (* ft ft_to_in))

;; yards_to_feet : number -> number
;; convert yards to feet
; .5 yard is 1.5 feet
; 1 yard is 3 feet
; 2 yards is 6 feet
(define (yards_to_feet y)
  (* y yd_to_ft))

;; rods_to_yards : number -> number
;; convert rods to yards
; .5 rod is 2.75 yards
; 1 rod is 5.5 yards
; 2 rods is 11 yards
(define (rods_to_yards r)
  (* r rd_to_yd))

;; furlongs_to_rods : number -> number
;; convert furlongs to rods
; .5 furlong is 20 rods
; 1 furlong is 40 rods
; 2 furlong is 80 rods
(define (furlongs_to_rods fs)
  (* fs fl_to_rd))

;; miles_to_furlongs : number -> number
;; convert miles to furlongs
; .5 mile is 4 furlongs
; 1 mile is 8 furlongs
; 2 miles is 16 furlongs
(define (miles_to_furlongs m)
  (* m mi_to_fl))

;; feet_to_cm : number -> number
;; convert feet to centimeters
; .5 foot is 15.24 centimeters
; 1 foot is 30.48 centimeters
; 2 feet is 60.96 centimeters
(define (feet_to_cm ft)
  (* ft ft_to_cm))

;; yards_to_cm : number -> number
;; convert yards to centimeters
; .5 yard is 1.5 feet, 18 inches, 18 * 2.54, 45.72 centimeters
; 1 yard is 3 feet, 36 inches, 36 * 2.54,    66.04 centimeters
; 2 yards is 6 feet, 72 inches, 72 * 2.54,   182.88 centimeters
(define (yards_to_cm y)
  (* y yd_to_cm))

;; rods_to_inches : number -> number
;; convert rods to inches
; .5 rod is 2.25 yards, 2.25 yards is (* 2.25 3) 6.75 feet, (* 6.75 12) 81 inches
; 1 rod is 5.5 yards, 5.5 yards is    (* 5.5 3) 16.5 feet,  (* 16.5 12) 198 inches
; 2 rod is 11 yards, 11 yards is      (* 11 3) 33 feet,     (* 33 12) 396 inches
(define (rods_to_inches r)
  (* r rd_to_in))

;; miles_to_feet : number -> number
;; convert miles to feet
; .5 mile (* 5280 .5) is 2640
; 1 mile (* 5280 1) is 5280
; 2 miles (* 5280 2) is 10560
(define (miles_to_feet m)
  (* m mi_to_ft))


;; EXAMPLES AS TESTS
(inches_to_cm .5) "should be" 1.27
(inches_to_cm 1) "should be" 2.54
(inches_to_cm 2) "should be" 5.08

(furlongs_to_rods .5) "Should be" 20
(furlongs_to_rods 1) "Should be" 40
(furlongs_to_rods 2) "Should be" 80

(feet_to_cm .5) "Should be" 15.24
(feet_to_cm 1) "Should be" 30.48
(feet_to_cm 2) "Should be" 60.96

(yards_to_cm .5) "Should be" 45.72
(yards_to_cm 1) "Should be" 66.04
(yards_to_cm 2) "Should be" 182.88

(rods_to_inches .5) "Should be" 81
(rods_to_inches 1) "Should be" 198
(rods_to_inches 2) "Should be" 396

(miles_to_feet .5) "Should be" 2640
(miles_to_feet 1) "Should be" 5280
(miles_to_feet 2) "Should be" 10560

(miles_to_furlongs .5) "Should be" 4
(miles_to_furlongs 1) "Should be" 8
(miles_to_furlongs 2) "Should be" 16

(rods_to_yards .5) "should be" 2.75
(rods_to_yards 1) "should be" 5.5
(rods_to_yards 2) "should be" 11

(yards_to_feet .5) "should be" 1.5
(yards_to_feet 1) "should be" 3
(yards_to_feet 2) "should be" 6

(feet_to_inches .5) "should be" 6
(feet_to_inches 1) "should be" 12
(feet_to_inches 2) "should be" 24