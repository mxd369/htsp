;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname strings_and_images_pt2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)

;(circle 10 "solid" "red")
;(rectangle 30 60 "outline" "blue")
;(text "hello" 24 "orange")

(above (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))

(beside (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))

(overlay (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))


(overlay (text "STOP" 48 "white") 
         (regular-polygon 60 8 "solid" "red"))

(beside (square 20 "outline" "blue")
        (above (circle 15 "solid" "red")
               (triangle 20 "solid" "green")))

(above (square 10 "solid" "red")
       (square 5 "solid" "blue"))

(above (rectangle 90 30 "solid" "yellow") (rectangle 90 20 "solid" "blue") (rectangle 90 20 "solid" "red"))


(require 2htdp/image) (overlay (circle 45 "solid" "white")
(beside (circle 1 "solid" "red") (circle 46 "solid" "red")) )

(overlay (triangle 20 "outline" "green")
      (above (rectangle 30 60 "outline" "blue")
             (square 30 "solid" "silver")))

(overlay (circle 50 "outline" "gold") (circle 40 "outline" "lightred") (rectangle 50 50 "outline" "blue") (circle 60 "outline" "darkred") (star 35 "solid" "darkyellow"))

(overlay(star 8 "solid" "red")(circle 38 "solid" "green"))
(overlay(star 8 "solid" "red")(circle 38 "solid" "orange"))
(overlay(star 7 "solid" "red")(circle 38 "solid" "orange"))
