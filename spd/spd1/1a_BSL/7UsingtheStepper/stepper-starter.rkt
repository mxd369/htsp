;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname stepper-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

;; stepper-starter.rkt

(+ (* 3 2) 1)



(define (max-dim img)
  (if (> (image-width img) (image-height img))
      (image-width img)
      (image-height img)))


(max-dim (rectangle 10 20 "solid" "blue"))


#|
(require 2htdp/image)
(+ (* 3 2) 1)

(require 2htdp/image)
(+ 6 1)

|#



#|

GREGOR KICZALES: In this short video I want
to show you how to use the stepper which is functionality
built into Dr. Racket that can help you understand the step by step
evaluation of complex expressions.
I have the stepper-starter.rkt file open here.
And if we look at this file there is one expression here at the topp--
a simple expression-- and then a function definition and a call
to that function.
If we look at this expression, let's see, plus times 3 2,
that's 6 plus 1, that's going to be 7.
That's easy enough to see.
And here we're calling max-dim with a rectangle.
And there's an if and maybe a little bit harder
to quickly see what the result is here.
Let's run it.
Let's see.
That produced 7 and the call to the function produced 20.
And you could try to work through this and see why it's 20.
And maybe you can see that quickly or maybe you can't.
What this stepper is for is to help you understand
how the evaluation of expression produced a certain value in cases
where it's too complicated to just see.
So let's try running the stepper.
I'll say step here and I'll make this window a little bit bigger.
And what the stepper does is it goes through the file
and it follows the beginning student language evaluation rules.
So the require doesn't produce a value.
The require is just a declaration.
So on the left hand side we see what Racket's evaluating.
On the right hand side we see the result of the current evaluation step.
So lets see.
It tried to evaluate open paren plus.
But the first operand is not a value so it has to be evaluated.
Open paren times.
Both operands are values so this expression can now be evaluated.
That's what Racket is telling us in green
is that this expression is ready to be evaluated.
And it produces 6.
If I say step again, then what's on the right here moves to the left.
And in green Racket is telling us, OK, this whole expression
is ready to be evaluated.
All of the operands are already values.
And when I call plus on 6 and 1 I get 7.
If I say step again, now Racket says, hey, it's seen this function definition
and that's just a definition.
Nothing happens to it.
And it's also seen a call to that function max-dim.
The call isn't ready to be evaluated yet because one
of the operands-- the only operand-- is not yet a value.
But that operand itself is ready to be evaluated because all of its operands
are values.
And when it evaluates rectangle of 10 20 solid blue,
the result produced by that is the rectangle.
It doesn't quite look blue here because Racket is highlighting it for us,
but the call to rectangle with those arguments produces a blue rectangle.
So now over here on the left we have max-dim of the blue rectangle.
Again, it doesn't quite look blue because of the green highlighting.
And what's the rule for calling a function?
Well, the rule for calling a function is to replace the call to the function
by the body of the function-- this stuff here-- where
every occurrence of the parameter-- in this case img--
has been replaced by the argument-- in this case the blue rectangle.
So that's what we've got here.
One evaluation step takes max-dim of the rectangle to this whole expression.
If we say step again, now Racket is trying to evaluate the if expression.
It can't do that because the question is not yet a value.
So it wants to evaluate the greater than.
It can't do that because the first operand is not yet a value.
It wants to evaluate the call to image-width.
It can do that because the first operand is a value.
That produces 10.
Similarly, now it can do the call to image-height which produces 20.
Now it can do the greater than-- greater than 10 20
because both operands are values.
That produces false.
And now the rule for an if is that if the question
is the value false then the entire if gets replaced by the false answer
expression.
That's what's happening here.
Here's the false answer expression.
And the entire if gets replaced with that here.
Now Racket can evaluate this call to image-height because the operand is
a value and that produces 20.
And that's the end of the evaluation.
You can also go backwards if you want to just to go back to some earlier point.
So that's how the stepper works.
And what the stepper is always showing you is it's
always show you what's the innermost expression where
all the operands are values.
And on the right it's showing you highlighted in pink-- or purple,
I guess-- what the value of that expression is.
And you can step backwards and forwards to understand this.
I'd encourage you to learn how to use the stepper.
As our programs get more and more complicated,
the stepper can be very useful, particularly if, for example, you
have a function which isn't producing the value that you wanted it to.
You can then step through it and see why it's producing the value that it does.

|#