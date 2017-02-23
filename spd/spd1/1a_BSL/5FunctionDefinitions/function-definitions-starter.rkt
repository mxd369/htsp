;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname function-definitions-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

;; function-definitions-starter.rkt

; comparison
(above (circle 40 "solid" "red")         
       (circle 40 "solid" "yellow")
       (circle 40 "solid" "green"))

; function definitions: a mechanism that is going to prevent cumbersome and needless duplicated code


#|
Grade School Math Functions:
Given: f(x) = 2*x
f(2) = 2*2 = 4
f(6) = 2*6 = 12

f(x) = parameter stands for varying value
function can be used repeatedly with any value each time

|#

;function definition
; the parameter c will stand for the changing value
(define (bulb changingValue)
  (circle 40 "solid" changingValue))

; how does the function work?
; call to the function
(bulb "purple")

; more concise than "comparison"
(above (bulb "red")
       (bulb "yellow")
       (bulb "green"))

#|

GREGOR KICZALES: In this video, I'm going to talk about functions.
Functions are the mechanism in the beginning student language
that's going to let you write programs that produce
a different value each time they run.
Right now our programs are always producing the same value.
So functions are incredibly important and powerful.
And they're going to form the bulk of our programs.
But I think what you're going to see here
in a few minutes is that, in the beginning student language,
functions are not too difficult to learn.
We're starting to be able to build up some interesting results.
For example here, by using above and circle three times,
I can write an expression which, when I run it,
produces this little traffic light.
Or at least it's sort of like a North American traffic
light except that too many lights are on.
But let's look at this expression a bit.
It's easy to be bothered by the amount of redundancy in it.
Notice that in this expression all of these parts are unchanging.
In the three calls to circle, these parts are unchanging.
Only this part here is changing in each of these calls to circle.
And it's easy to be worried.
Gosh, if programs get big, and a lot of them
are sort of duplicated code like this, that seems needless.
That seems like it's going to be cumbersome.
And it would be cumbersome and it is needless.
There's a mechanism that's going to let us
prevent that call function definitions.
So what are function definitions and how do they work?
Well, you actually already understand a lot about function definitions.
You just have to remember your grade school
math in which you learned that you could write mathematical functions like this.
For example, here is f of x that equals 2 times x.
And that means that f of 2 is 2 times 2 is 4.
Or f of 6 is 2 times 6 is 12.
What's going on in these function definitions
is that x, which is called the parameter,
stands for the varying value, and then the rest of the function definition
is the unchanging value, the two times in this case.
And then the function can use any number of times with a different value
each time.
Or even sometimes it can be used with the same value as before.
And each time the parameter will take on the changing value
and you'll get the result of the function with that value.
So how is this going to work for us?
The beginning student language has a function definition mechanism
and it works like this.
I'm going to write define open paren the name of a function.
In our functions, we're not going to have
to use single character names like x.
I'm going to call this function bulb.
And the name of a parameter, which in this case I'll call c.
And then I'm going to write that the body of the function
is circle 40 solid and then c.
And what's going to happen here, just like in the mathematical functions,
is that the parameter c is going to stand for the changing value.
And the body of the function is going to use that parameter in the place
where it wants to use the changing value.
And now I can show you how this function works.
If I write open paren Bulb and then say purple, this is a call to the function.
Intuitively, you could think of that the body of the function
was evaluated with c taking on the value purple.
In a minute I'll show you the exact evaluation rules,
but for now you could think of it intuitively that way.
Now that I have the bulb function I can clean this up some.
Let me just take this whole thing, and for now I'll just comment it out.
I'm going to get rid of this bulb purple because that was just
for demonstration.
And I'll rewrite the original expression we had this way.
And then when I run the program, I get the same result as before.
Now, this expression at the end is much more concise
than the original expression.
It reduces the duplication.
And also by choosing a nice name here, by choosing the name bulb,
I give the code a bit more meaning.
I can now think of these as three bulbs, one on top of the other.
And what we would do now in a real program
is we'd go ahead and completely get rid of this commented out stuff.
And just because I think it looks better because these bulbs are
one on top the other, I would probably format this above that way.
And now I've got something that's nice and concise, and it's clear for me
to understand what it's doing.

|#


(bulb (string-append "re" "d"))
(bulb "red")
(circle 40 "solid" "red")

#|
To evaluate primitive call
 - first reduce operands to values (called the arguments)
 - then apply primitive to the values

For function definitions
 - simply record definition

To evaluate function call
 - first reduce operands to values (called the arguments)
 - replace function call by
   - body of function in which every occurrence of parameters(s) are replaced by corresponding argument
|#



#|

GREGOR KICZALES: What I want to do now is the same thing we've done with all the other beginning student language constructs we've seen,
which is to go over in a little bit more detail the rules for forming function definitions and function calls,
and also the rules for evaluating function calls. Before I get to those rules, I just want to show you
something, which is where you could find all the rules for the BSL language.
If you go to the course web page and you scroll here to the Languages tab,
then this page has all the rules for the BSL language including
how to form all the kinds of expressions we've seen
and the rules for evaluating them and so on.
The rule for forming a function definition is simple.
We start with open paren define because it's a definition.
And then we have paren and the name of the function
followed by the names of the parameters.
In the example we have so far, we just have one parameter c.
But we'll define other functions later that have more than one parameter.
And then we close that paren-- so this first part
has open paren, the name of the function, the name of the parameters,
and we close that paren.
And then-- and we always put it on a new line--
we have an expression which forms the body of the function.
So here's the example we've seen so far.
Define, the name of the function is bulb, the parameter is c,
and here's the body of the function.
To form a function call expression, we put open paren,
the name of a defined function, and then we
put some number of expressions corresponding
to the number of parameters the function has.
So for our bulb function, which has a single parameter,
we put a single expression after the bulb name.
And those expressions are all called operands.
To show you how the rules for evaluation related to functions work,
you're going to first start by getting a somewhat simpler example.
What I've got here is a call to bulb, where it's argument,
instead of already being a value, is going to be
another call, a primitive call.
And I'm also going to set up by putting the rules for evaluating functions
and primitive calls here on the right.
So let's see.
We look at open paren bulb and that tells us
that we've got a function call.
So the rule for evaluating a function call
is to first reduce the operands to values.
So now let's go look at the first operand.
The first operand is open paren string append.
So that's a primitive call.
So we now look at the rules for evaluating a primitive call.
And the first rule is to reduce operands to values again.
Notice that the rule-- the first rule for function calls and primitive calls
is the same.
You reduce the operands to values.
Well, let's see.
The string re and the string d are both already values.
So now we can apply the string append primitive.
And the first full step in the evaluation
is that we now have bulb with an operand of the value red.
So now, going back to the function call roles,
we have now reduced the first operand to a value.
So we reduced all the operands to value.
And now we're going to replace the function
call by the body of the function-- so I've copied the body of the function
down here-- but in the body of the function
we're going to replace every occurrence of the parameter
c by the argument-- the corresponding argument-- to the function,
in this case, red.
And now what do we have?
Well, open paren circle, this is a call to a primitive.
So notice the function call is completely gone now.
Once we replaced the call with its body, we just
work on evaluating the replaced body.
This is a call to a primitive.
The first rule for a primitive is to reduce all the operands to values.
There's three operands in this case and they are all already values.
So now, the second step of a call to a primitive
is to just apply the primitive to the values.
And the value of that primitive call is a red circle.
And now all we've got is a value so evaluation stops.
Let me just point one thing out to you about the way
I've done this hand step by step evaluation.
By writing all of the different steps of the evaluation in the definitions
window this way, what I can do now is actually run this.
And since there's four steps to the evaluation,
I should see the same result four times.
Because when Racket starts here and runs to the end
it gets a red circle, when it starts here and runs to the end
it gets a red circle, when it starts here and runs to the end
it gets a red circle, and when it starts with a red circle and runs to the end
it gets a red circle.
So if you do your step by step evaluation exercises in the Definitions
window like this and then run it, you can kind of
check whether you've got the right step by step evaluation
because you should see the same value repeated each time.
Now you understand how to define functions
and you know the rules for evaluating function calls.
As I said at the beginning, functions are
going to be incredibly important to all of our Racket programs
so it's really important that you understand how they work.
So if it's ever unclear to you, just come back to this video
and also be sure to work the practice problems that
are associated with this video.
Just as an aside so you understand how powerful functions are,
one of the most important theoretical results in computer science
says that if you have a language that just has functions-- just functions,
no strings, no numbers, just functions-- you
could actually write any program that can be written in any language.
Now, you know that's a theoretical result that makes academics happy.
A language like that would be pretty cumbersome to program
in so you would never do it.
Back in practical terms now.
We want functions, we want strings, we want images, we want numbers,
we want all of that.
Even so, functions are pretty central to the whole game.


|#