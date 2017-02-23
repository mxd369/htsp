(require 2htdp/universe)
(define (create-rocket-scene.v2 height)
  (cond
    [(<= height 100)
     (place-image . 50 height (empty-scene 100 100))]
    [(> height 100)
     (place-image . 50 100 (empty-scene 100 100))]))
	 
	 
	 
/*
> (animate create-rocket-scene.v2)
*/