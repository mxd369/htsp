(require 2htdp/image)
(require 2htdp/universe)

(define HEIGHT 100)
(define WIDTH 100)
(define ROCKET rocket.png)

(define (create-rocket-scene.v3 height)
  (cond
    [(<= height (- HEIGHT (/ (image-height ROCKET) 2)))
     (place-image ROCKET 50 height (empty-scene WIDTH HEIGHT))]
    [(> height (- HEIGHT (/ (image-height ROCKET) 2)))
     (place-image ROCKET 50 (- HEIGHT (/ (image-height ROCKET) 2))
                  (empty-scene WIDTH HEIGHT))]))
(animate create-rocket-scene.v3)