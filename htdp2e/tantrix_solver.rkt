#lang racket

; Place the tile number side up, then fip it horizontally.
; First edge color is on the right, then walk clockwise.
(define tiles '(
                "ryybrb"
                "brrbyy"
                "rrbbyy"
                "brybyr"
                "ryyrbb"
                "ybryrb"
                "rbbyry"
                "ybbryr"
                "rbyryb"
                "byyrbr"
                ))

; hex tiles will be positioned like:
;       (0 2) (1 2) (2 2)
;    (0 1) (1 1) (2 1)
; (0 0) (1 0) (2 0)
(struct pos (x y) #:prefab)

; rotations of placed tiles start with the tile flipped over sideways after
; reading the number, then are counter-clockwise, so the
; exit color in a given dir will be (remainder (+ dir rot) 6)
(struct pt (loc tile rot) #:prefab)

; check if two positions are identical
(define (pos= l1 l2)
  (and (= (pos-x l1) (pos-x l2))
       (= (pos-y l1) (pos-y l2))))

; return a position that is one of the six neighbors of a position
; directions start at 0 to the right, then increase clockwise
(define (neighbor loc dir)
  (define x (pos-x loc))
  (define y (pos-y loc))
  (cond
    [(= 0 dir) (pos (+ x 1) y)]
    [(= 1 dir) (pos (+ x 1) (- y 1))]
    [(= 2 dir) (pos x (- y 1))]
    [(= 3 dir) (pos (- x 1) y)]
    [(= 4 dir) (pos (- x 1) (+ y 1))]
    [(= 5 dir) (pos x (+ y 1))]))

; return true if the positions are neighbirs
(define (is-adjacent? p1 p2)
  (ormap (lambda (dir) (pos= p2 (neighbor p1 dir))) (range 0 6)))
   
; returns the color exiting the placed tile in dir direction
(define (dir-color a-pt dir-from-a)
  (string-ref
   (list-ref tiles (pt-tile a-pt))
   (remainder (+ dir-from-a 
                 (pt-rot a-pt)) 
              6)))
 
; returns true if the last element connects both follow colors
(define (list-is-loop? placed follow-color)
  (define a-pt (first placed))
  (andmap (lambda (dir-from-a)
             (define color-a (string-ref
                              (list-ref tiles (pt-tile a-pt))
                              (remainder (+ dir-from-a 
                                            (pt-rot a-pt)) 
                                         6)))
             (if (equal? (dir-color a-pt dir-from-a) follow-color)
                 ; must have a neighbor this dir
                 (ormap (lambda (b-pt)
                          (pos= (neighbor (pt-loc a-pt) dir-from-a)
                               (pt-loc b-pt)))
                        placed)
                 ; don't need a neighbor on other colors
                 #t))
           (range 0 6))) ; directions to check from last tile

; check if two neighbor tiles have a valid color connection
(define (colors-match? a-pt b-pt dir-from-a)
  (define color-a (dir-color a-pt dir-from-a))
  (define color-b (dir-color b-pt (list-ref '(3 4 5 0 1 2) dir-from-a)))
  (equal? color-a color-b))
   
; check if a new tile placement will violate any color rules from already placed tiles
(define (valid? new-pt placed)
  ; for each neighbor of new, see if it is in placed
  (andmap (lambda (dir)
            (define check-pos (neighbor (pt-loc new-pt) dir))
            ; all tiles must either not be in this pos, or match colors
            (andmap (lambda (check-pt)
                      (or (not (pos= check-pos (pt-loc check-pt)))
                          (colors-match? new-pt check-pt dir)))
                    placed))
          (range 0 6)))
         
; handle completion or place another tile
(define (add-tile placed follow-color)
;  (printf "~a\n" placed)
  (cond
    [(= (length placed) (length tiles))
      ; all tiles have been placed
      (when (list-is-loop? placed follow-color)
        (printf "solution: ~a\n" placed))]
    
    [else
     ; place the next tile in an open adjacent spot to the last tile
     ; if that direction is the follow color
     (define last-loc (pt-loc (first placed)))
     (for-each (lambda (dir)
                 ; only try this dir if it is the right color
                 (when (equal? follow-color (dir-color (first placed) dir))
                   (define this-loc (neighbor last-loc dir))
                   ; we can only use this loc if no other tiles match it
                   (when (not (ormap (lambda (t)
                                       (pos= (pt-loc t) this-loc))
                                     placed))
                     ; try all tiles in this spot
                     (for-each (lambda (tile-num)
                                 ; can't use the tile if it has already been placed
                                 (when (not (ormap (lambda (t)
                                                     (= (pt-tile t) tile-num))
                                                   placed))
                                   ; try all rotations of this tile at the noew spot
                                   (for-each (lambda (dir)
                                               (define new (pt this-loc tile-num dir))
                                               (when (valid? new placed)
                                                 ; this is a good placement, go on to the next tile
                                                 (add-tile (cons new placed) follow-color)))
                                             (range 0 6))))
                               (range 0 (length tiles)))))) ; selection of new tile
                 (range 0 6))])) ; neighbor dirs from last placed tile

; Start with tile 1 placed and follow yellow.  The direction doesn't matter, because the
; solutions can be rotated.
(add-tile (list (pt (pos 0 0) 0 0)) #\y)