;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname place-image) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
place-image

render

#|
the value of CAT-IMG is an image of the cat
the value of MTS is a blank background (eMpTy Scene)
the value of CTR-Y is half-way down MTS on the y axis
|#

;; 23 times per second
0  (render-cat 0) (next-cat 0)
3  (render-cat 3) (next-cat 3)
6  (render-cat 6) (next-cat 6)
9  (render-cat 9) (next-cat 9)
12 (render-cat 12) (next-cat 12)
15 etc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (big-bag 0
;; expression that evaluates to initial world state

;; (on-tick next-cat)      ; Cat -> Cat
;; Each time the clock ticks,
;; call next-cat with the current world state,
;; to get the next world state.

(big-bag 0                       ; Cat
         (on-tick next-cat)      ; Cat -> Cat
         (to-draw render-cat))   ; Cat -> Image

;; (to-draw render-cat))   ; Cat -> Image
;; each time the clock ticks, call render-cat,
;; with the current world state to draw the current world state

#|
the signature of render-cat
is that it consumes Cat and produces Image.
So what big-bang is doing for us is it's taking
all the little pieces of our world, the initial world state, the tick function,
the draw function, and it's combining all those pieces together
to get a world.
|#


;; big-bang is polymorphic:
;; it works for any type of world state


;; can be anything
;; for any given use of big-bag all of the X have to be the same type
(big-bag 0                       ; X
         (on-tick next-cat)      ; X -> X
         (to-draw render-cat))   ; X -> Image

