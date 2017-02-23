;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname CreateYourOwnImage) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)


(above(beside (rectangle 30 30 "solid" "brown")
              (overlay (circle 10 "solid" "white")
              (rectangle 30 60 "solid" "brown"))
              (rectangle 30 90 "solid" "brown")
              (overlay (circle 10 "solid" "white")
              (rectangle 30 60 "solid" "brown"))
              (rectangle 30 30 "solid" "brown"))
              (rectangle 40 5 "solid" "blue")
              (overlay (rotate 30 (text "3.1416" 20 "white"))
              (rectangle 80 105 "solid" "blue")))

(star 100 "solid" "black")


(triangle/sss 40 60 80 "solid" "seagreen")
(triangle/sss 80 40 60 "solid" "aquamarine")
(triangle/sss 80 80 80 "solid" "lightseagreen")


(triangle/ass 10 60 100 "solid" "seagreen")
(triangle/ass 90 60 100 "solid" "aquamarine")
(triangle/ass 130 60 100 "solid" "lightseagreen")


(triangle/sas 60 10 100 "solid" "seagreen")
(triangle/sas 60 90 100 "solid" "aquamarine")
(triangle/sas 60 130 100 "solid" "lightseagreen")


(triangle/ssa 60 100 10 "solid" "seagreen")
(triangle/ssa 60 100 90 "solid" "aquamarine")
(triangle/ssa 60 100 130 "solid" "lightseagreen")