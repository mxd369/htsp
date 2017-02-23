;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname BooleanAndIfExpressions_p4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))

(> (image-height I1) (image-height I2))
(< (image-width I1) (image-width I2))

; using the 'and' primitive
; to form and expression: (and <expr1> <expr2> ...)
; all <exprn> must produce Boolean
; to evaluate and expression:
; evaluate <exprn> one at a time:
; - if an <exprn> produces false immediately produce false
; - if all <exprn> produce true then produce true
(and (< (image-height I1) (image-height I2))
     (< (image-width I1) (image-width I2)))


#|
GREGOR KICZALES: What I want to do now is back up just a little bit.
Let's go back to when we just had image-1 and image-2.
And we know that if we want to find out whether image-1 has a height greater
than image-2, we can say this.
So that's comparing the height of I1 and the height of I2.
And if we run that, we'll get true, because 20 is bigger than 10.
We could also, if we wanted to, compare the width of I1
and the width of I2 to see-- in some sense this first thing is saying
is I1 taller than I2, and the second one is saying is I1 skinnier than I2.
And that's true.
Now what if we wanted to know whether I1 was both taller and skinnier than I2,
if it was both things together?
Well, here's a new primitive called and.
and is a special kind of expression, like if.
And the way and works is you can wrap (and around any number
of other expressions that themselves are going to produce a Boolean value.
And what and does is it evaluates the first one, and if that produces true,
it keeps going.
And if by the time it gets to the end, all of the expressions
have produced true, then the whole and produces true.
If on the other hand and gets to an expression that produces false,
then it stops right away and produces false.
So and does what's called short circuiting.
It doesn't keep evaluating if it comes to an expression that produces False.
It only keeps going as long as the expressions are producing true.
There's also a primitive or expression, and there's
a primitive function called not.
|#