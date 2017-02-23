;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname BooleansAndIfExpressions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Boolean and if Expressions
(require 2htdp/image)

;true
;false

(define WIDTH 100)
(define HEIGHT 100)
(> WIDTH HEIGHT)
(>= WIDTH HEIGHT)

; predicates are primitives or functions that produce a boolean value(true or false)

" "

(= 1 2)
(= 1 1)
(> 3 9)

" "

(string=? "foo" "bar")

(define ImageOne (rectangle 10 20 "solid" "red"))
(define ImageTwo (rectangle 20 10 "solid" "blue"))

" "

(< (image-width ImageOne)
   (image-width ImageTwo))

;(rectangle 10 20 "solid" "purple") width height

#|
GREGOR KICZALES: If you've ever played 20 questions,
you know that the answer to true-false questions can really say a lot.
And in fact, in computer programs, true-false questions
turn out to be fundamental.
In this video, what I want to do is talk about a new kind of value
called a boolean that's going to represent
the answer to true-false questions.
I'm also going to talk about a number of primitive true-false questions
and a new expression in Racket called if that's
going to let us make our programs produce different values depending
on the answer to true-false questions.
Boolean values are going to represent the answer to true-false questions
so you shouldn't be surprised to find that there's two boolean values.
And in the beginning student language we write them this way.
True is the value that represents the true answer to a true-false question.
And False is the value that represents a false answer.
And since they're values, if we run them-- if we evaluate them-- we
get the value themselves.
OK.
Let me comment those out.
That's how we're going to represent the answer.
What are the questions?
Well, let me just set myself up here a bit.
I'll give myself two constants, WIDTH and HEIGHT,
and I'll just make them both be 100.
OK?
So here's a true-false question.
Here's a primitive called greater than.
And if we say greater than WIDTH HEIGHT and evaluate that,
run that, we get false because width is 100,
height is 100 and 100 isn't greater than 100.
On the other hand, here's another primitive.
greater than or equal WIDTH HEIGHT.
And if we run that now, we get false for the first one
and true for the second one because 100 is greater than or equal to 100.
These kinds of primitives that produce a true-false value
are often called predicates.
So we would say the greater-than is a predicate and greater-than-or-equal-to
is a predicate.
And there's lots of others.
You could say equals 1 2 or equals 1 1.
Let me just comment these two out so they don't confuse us.
Or greater-than 3 9.
And we'll run that and equals 1 2 is giving us false, equals 1 1
is giving us true, and greater-than 3 9 is giving us false.
And there's lots of others.
And I'll remind you that the 1x lecture video will show you
how to discover more of them.
Let me just show you a couple more.
I'll comment this out now so it doesn't confuse us.
There are some that operate on strings.
So for example, you can say, string-equals foo bar.
And that's false because those two strings are not equal.
What if I want to ask questions about images?
So let's see.
Suppose I want to have two images like this.
I1 is a rectangle that's 10 by 20 and it's solid and it's red.
And I2 is a rectangle and it's 20 by 10 and it's solid and it's blue.
Suppose I want to know which image is thinner.
I could say, less-than image-width I1, image-width I2.
And I could run that.
Let's see, rectangle this function is not defined.
Oh, this is the usual mistake where I wanted to use Image Functions
and I forgot to put a require.
I'll just go put require to 2htdp/image.
And now if I run this, I'm getting true meaning
that the width of I1-- which is 10-- is less than
the width of I2-- which is 20.
|#

" "
(> (image-width IMG1 50))
(> (image-width IMG1) 50)
(>= (image-width IMG1) 50)
(> 50 (image-width IMG1))