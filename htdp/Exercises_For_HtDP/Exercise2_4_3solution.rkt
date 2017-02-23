;; Execute these examples one at a time in DrScheme to see 
;; error messages for common mistakes.

(+ 5 (/ 1 0))

;;1.
;;error message: /: division by zero
;;meaning:       rather than crashing, Scheme warns of 
;;               the division by zero

(sin 10 20)

;;2.
;;error message: sin: expects 1 argument, given 2: 10 20
;;meaning:       function contract was designed for one argument, 
;;               but you gave two

(somef 10)

;;3.
;;error message: reference to undefined identifier: somef
;;meaning:       the function someof has not previously been defined