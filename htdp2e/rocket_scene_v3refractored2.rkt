(require 2htdp/image)
(require 2htdp/universe)

(define HEIGHT 100)
(define WIDTH 100)

(define (create-rocket-scene.v3 height)
  (cond
    [(<= height (- HEIGHT (/ (image-height .) 2)))
     (place-image . 50 height (empty-scene WIDTH HEIGHT))]
    [(> height (- HEIGHT (/ (image-height .) 2)))
     (place-image . 50 (- HEIGHT (/ (image-height .) 2))
                  (empty-scene WIDTH HEIGHT))]))
(animate create-rocket-scene.v3)