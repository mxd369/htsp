;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname StringsAndImages2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image) ;tells DrRacket we want to use the image functions from the 2nd edition of How to Design Programs book

; circle primitive
#|
The first argument to circle is the radius in screen coordinates/pixels
The second argument to circle says whether the circle should be solid or an outline
The third argument is a color
the below expression produces a red circle
|#
(circle 10 "solid" "red")

#|
Rectangle
takes a width and height, can take outline or solid, can take other colors
|#
(rectangle 10 5 "outline" "blue")

#|
Text
takes a string, and a font size, can take other colors
|#
(text "Hi There" 28 "orange")

#|
above
make a circle of size 10 that's solid and red
make another couple of circles
change the sizes
above creates a stack one on top of the other lined up on their horizontal centers
above is a kind of a version of string append for images
|#
(above (circle 5.00 "solid" "red"   )
       (circle 7.50 "solid" "purple")
       (circle 10.0 "solid" "yellow")
       (circle 12.5 "solid" "green"))

#|
beside
|#
(beside (circle 05 "solid" "red"   )
        (circle 10 "solid" "purple")
        (circle 15 "solid" "yellow")
        (circle 20 "solid" "green"))

#|
Overlay: produces an image with all its arguments one on top of the other, and lined up on their centers
|#
(overlay (circle 05 "solid" "red"   )
         (circle 10 "solid" "purple")
         (circle 15 "solid" "yellow")
         (circle 20 "solid" "green"))

#|
stars
|#

#|
ellipse
|#

#|
triangles
|#