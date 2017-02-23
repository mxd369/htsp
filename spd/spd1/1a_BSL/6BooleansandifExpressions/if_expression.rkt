;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname if_expression) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; if expressions

#|
(if <expression>  ; question(must produce boolean)
    <expression>  ; true answer
    <expression>) ; false answer
|#

(require 2htdp/image)

(define ImageOne (rectangle 10 20 "solid" "red"))
(define ImageTwo (rectangle 20 10 "solid" "blue"))

      ; this part is the question
(if (< (image-width ImageOne) (image-height ImageOne)) "tall" "wide")


      ; this part is the question
(if (< (image-width ImageTwo) (image-height ImageOne)) "tall" "wide")


#|

GREGOR KICZALES: OK, so that's Boolean values true and false
and a number of predicates that are questions
that produce true-false answers.
Now I want to talk about if expressions, which
are going to let us have our program produce different results depending
on the answer to true-false questions-- depending
on the result produced by a predicate.
If expressions are simple to form.
It's open paren if and then three expressions and a close paren.
We call those three expressions the question, the true answer,
and the false answer.
And one key thing is the question expression
has to produce a Boolean value.
So the question expression usually calls a predicate of some form.
Now let's look at an example.
Going back to where we were, let me start
by just deleting this expression here and then we'll
try to write an if expression that determines what the shape is of i one.
So we'll say open paren if, and then let's
say less than-- is the width of I1 less than the height of I1?
And if that's true, that's the question.
The question is true, then here is the true answer.
We're going to say that the image is tall
if its width is less than its height.
And in the false answer, we'll say that the image is wide.
And if I run that now, there's two interesting things to see here.
One is that the result was tall because sure enough,
I1 is taller than it is wide.
And the other interesting thing to see was that right here, this piece of code
was highlighted in black.
Depending on which version of racket you're using,
it might be highlighted in orange.
But it's highlighted.
We're going to talk a lot more about that later this week.
But if I go ahead now and switch around, maybe I
ask the question about I2 instead of I1.
Well, I2's width is greater than its height, and in this case,
if we evaluate the expression, it produces wide
and the other-- the true answer this time-- is highlighted in black.
So you may be able to start to guess what that black highlighting means,
but again, we'll talk about that later.

|#