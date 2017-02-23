(require 2htdp/image)
(require 2htdp/universe)
(define (create-rocket-scene.v3 height)
  (cond
    [(<= height (- 100 (/ (image-height .) 2)))
     (place-image . 50 height (empty-scene 100 100))]
    [(> height (- 100 (/ (image-height .) 2)))
     (place-image . 50 (- 100 (/ (image-height .) 2))
                  (empty-scene 100 100))]))
(animate create-rocket-scene.v3)