;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname approximate_area) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;(define pi 3.14)
;(sqr 3.14)

;; compute the area of a disk


;; Number->Number
;; consume radius(r) and produce area(* 3.14 (sqr r))
(define (area-of-disk r)
  (* 3.14 (sqr r)))

;; call to the function area-of-disk
(area-of-disk 5)

;; apply area-of-disk to 10
(area-of-disk 10)

