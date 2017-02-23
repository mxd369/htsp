(require 2htdp/image)
(require 2htdp/universe)

(define HEIGHT 100)
(define WIDTH 100)
(define ROCKET rocket.png)
(define HEIGHT-OF-MIDDLE-OF-ROCKET-WHEN-LANDED
  (- HEIGHT (/ (image-height ROCKET) 2)))

(define (create-rocket-scene.v3 height)
  (cond
    [(<= height HEIGHT-OF-MIDDLE-OF-ROCKET-WHEN-LANDED)
     (place-image ROCKET 50 height (empty-scene WIDTH HEIGHT))]
    [(> height HEIGHT-OF-MIDDLE-OF-ROCKET-WHEN-LANDED)
     (place-image ROCKET 50 HEIGHT-OF-MIDDLE-OF-ROCKET-WHEN-LANDED
                  (empty-scene WIDTH HEIGHT))]))
(animate create-rocket-scene.v3)