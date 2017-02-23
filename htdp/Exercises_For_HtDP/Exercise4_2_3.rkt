;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise4_2_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
#| Exercise 4.2.3.
Mathematical equations in one variable are claims about an unknown number.
For example, the quadratic equation:

x^2 + 2 * x + 1 = 0

is a claim concerning some unknown number x.
For x = - 1, the claim holds:

x^2 + 2 * x + 1 = (-1)^2 + 2 * (-1) + 1 = 1 - 2 + 1 = 0

For x = 1, it doesn't, because
x^2 + 2 * x + 1 = (1)^2 + 2 * (1) + 1 = 1 + 2 + 1 = 4,
and 4 is not equal to 0.

A number for which the claim holds is called a solution to the equation.

We can use Scheme to formulate equational conditions as a function.
If someone then claims to have a solution,
we can use the function to test whether the proposed solution is,
in fact, a solution.
Our running example corresponds to the function

;; equation1 : number  ->  boolean
;; to determine whether x is a solution for x^2  +  2  ·  x  +  1  =  0
(define (equation1 x)
  (= (+ (* x x) (+ (* 2 x) 1)) 0))

When we apply equation1 to some number, we get true or false:

  (equation1 -1)
= true

and

  (equation1 +1)
= false

Translate the following equations into Scheme functions:
(1)
4 · n + 2 = 62

(2)
2 · n2 = 102

(3)
4 · n2 + 6 · n + 2 = 462

Determine whether 10, 12, or 14 are solutions of these equations.
|#

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; equation1 : number -> boolean
;; determine whether n is a solution for: 4 * n + 2 = 62
(define (equation1 n)
  (= (+ (* 4 n) 2) 62))

;; equation2 : number -> boolean
;; determine whether n is a solution for: 2 * (n*n) = 102
(define (equation2 n)
  (= (* 2 (* n n))102))

;; equation3 : number -> boolean
;; determine whether n is a solution for: 4 * (n*n) + 6 * n + 2 = 462
(define (equation3 n)
  (= 462(+ (* (* n n) 4)(* 6 n) 2)))




 (equation1 10) "should be" false
 (equation1 12) "should be" false
 (equation1 14) "should be" false

 (equation2 10) "should be" false
 (equation2 12) "should be" false
 (equation2 14) "should be" false

 (equation3 10) "should be" true
 (equation3 12) "should be" false
 (equation3 14) "should be" false