;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise4_2_4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
#| Exercise 4.2.4.
Equations are not only ubiquitous in mathematics,
they are also heavily used in programming.
We have used equations to state what a function should do with examples,
we have used them to evaluate expressions by hand,
and we have added them as test cases to the Definitions

For example,
if our goal is to define Fahrenheit->Celsius,
we might have added our examples as test cases as follows:

;; test expression:
(Fahrenheit->Celsius 32)
;; expected result:
0
and

;; test expression:
(Fahrenheit->Celsius 212)
;; expected result: 
100

After clicking the Execute button we can compare the two numbers.
If they are equal,
we know our function works.

As our results become more and more complex,
comparing values becomes more and more tedious.
Using =, we can instead translate these equations into claims:

(= (Fahrenheit->Celsius 32)
   0)
and

(= (Fahrenheit->Celsius 212)
   100)

Now, if all claims evaluate to true,
we know that our function works for the specified examples.
If we see a false anywhere,
something is still wrong.

Reformulate the test cases for exercises 2.2.1, 2.2.2, 2.2.3, and 2.2.4 as claims.

Testing: Writing tests as claims is good practice,
though we need to know more about equality to develop good automatic tests.
To do so, we resume the discussion of equality and testing in section 17.8. 
|#
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; fahrenheit->celsius : number -> number
;; computes the celsius equivalent of t

;; EXAMPLES
;; 32 degrees fahrenheit is 0 degrees celsius
;; 212 degrees fahrenheit is 100 degrees celsius
;; -40 degrees fahrenheit is -40 degrees celsuis

(define (fahrenheit->celsius t)
  (* 5/9 (- t 32)))

;; EXAMPLES TURNED INTO TESTS
(fahrenheit->celsius 32) "should be" 0
(fahrenheit->celsius 212) "should be" 100
(fahrenheit->celsius -40) "should be" -40





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; The dollar/euro conversion rate was roughly 1.17 euros per dollar
;; when the euro was introduced on January 1, 1999.
;; (source: The Economist).

;; dollar->euro : number -> number
;; computes the value of d dollars in euros

;; EXAMPLES
;; one dollar is 1.17 euros
;; one dollar is 2.34 euros

(define (dollar->euro d)
  (* 1.17 d))

;; EXAMPLES TURNED INTO TESTS
(dollar->euro 1) "should be" 1.17
(dollar->euro 2) "should be" 2.34





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; triangle : number number -> number
;; calculates the area of a triangle, given its base and height

;; EXAMPLES:
;; if the base is 10 and the height is 5, the area of the triangle is 25.
;; if the base is 2 and the height is 5, the area of the triangle is 5.

(define (triangle base height)
  (* 1/2 base height))

;; EXAMPLES TURNED INTO TEST CASES:
(triangle 10 5) "should be" 25
(triangle 2 5) "should be" 5





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; convert3 : number number number -> number
;; builds a three digit number from its digits

;; EXAMPLES
;; convert3 of 1, 2, and 3 produces 321.
;; convert3 of 5, 3, and 9 produces 935.

(define (convert3 ones tens hundreds)
  (+ ones
     (* 10 tens)
     (* 100 hundreds)))

;; EXAMPLES TURNED INTO TESTS
(convert3 1 2 3) "should be" 321
(convert3 5 3 9) "should be" 935
