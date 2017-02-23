;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname DiscoveringPrimitives) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Discovering Primitives


(require 2htdp/image)

(round (/ 3 4))

; triangle= (primitive <side-length> <fill-type> <color>)


(radial-star

#|

GREGOR KICZALES: In this video, I'm going
to talk about how you can discover more primitives than the ones I
cover in the videos.
In the Beginning Student Language, there's far too many primitives for you
to learn them all, and far, far too many for us to cover them in the videos.
So you need to be able to discover primitives on your own.
And in other programming languages, there'll
be even more primitives that you need to be able to discover on your own.
So what I want to talk about is two general techniques
you can use for discovering primitives.
Now, the first one-- you're going to laugh at this-- but the first one
is actually to make a lucky guess.
You may think that's crazy, but it turns out
that what happens after you've been programming language for awhile,
is you start to get a pretty good sense of what the naming
conventions are and it turns out you do manage
to guess the name of a new primitive more often than you might think.
Let me show you how that works.
Imagine now we go back to where we were in the strings and images video.
I know there's circle, rectangle and text.
I might say, well, gee, I wonder if there's something called triangle.
And I could just try it.
And I guess triangle must have some kind of size.
I'll just put in a number.
And it probably has something like a fill and a color
so let's just say solid and purple.
Again, I'm just trying this to see if it works.
And sure enough, it does seem to work.
At this point, I might wonder, well, what exactly is that number 40?
And then I can go up here to triangle, click on it, and on my Mac
I'm going to control click-- on Windows you would right click-- and say
Search in Help Desk for Triangle.
And this is going to bring up the Dr. Racket documentation for Triangle.
And I want the one from 2htdp/image So I'm always going
to select the one from 2htdp/image
And it says that the first number is the side length.
So I know that 40 is this side length right along there.
That's the 40.
So you can guess, and often you can guess right.
That's the first technique for discovering
new primitives is to make a good guess.
Another good trick for discovering the name of new primitives
is called search and scroll.
Or look up and scroll.
Imagine that what I'm doing is I'm writing
some expressions that-- in my Racket-- like this one, divide 3 by 4.
Now, if I run that, of course, I get 0.75.
But maybe what I'd really like to do is round that to the nearest whole number,
like 1 in this case.
There must be a function in Racket to help me do that.
So here's how the trick works.
I find a place in code where there's a related function.
In this case, divide.
Divide's kind of like round.
It operates on numbers.
And I control click on top of divide-- or in Windows I right click--
and then I pick the menu item Search in Help Desk for Slash.
Now, the thing is, Racket supports a lot of different languages.
I want to choose the documentation for Slash
from htdp/beginner I want to choose this line of it here.
And so I'm going to click on that slash right there
and that'll take me to the documentation for this version of divide.
And here I am.
And goodness gracious, there's a whole bunch of functions
here that look like they operate on numbers. divide, less-than greater-than
And what I'm going to do is I'm going to scroll through these
and I'm going to try not to pay too much attention to the list
because there's a lot of these functions.
So I'm just kind of scrolling, scrolling, scrolling my way
through this list.
I need to not get lost in all these functions or else
my head is going to explode.
But I'm scrolling, scrolling, scrolling, and eventually,
after just a whole lot of scrolling-- in this case
there are lots of functions that operate on numbers--
I will come to a function that is the one I need in this case.
And here it is.
Round.
And round does what I want to do.
It rounds a real number to an integer.
So now I've got what I need.
I go back to Racket, I put round around the previous expression-- ha, ha,
ha-- I run that and I get 1.
Which is what I was looking for.
So the trick here is to look up the documentation for a related function
and then scroll around looking for the thing you
want without getting lost in all the very, very many functions
that Racket provides.

|#