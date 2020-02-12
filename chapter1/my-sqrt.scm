
; 十分に良い精度であることを定義
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; 平均値を計算
(define (ave x y)
  (/ (+ x y) 2))

; loop
(define (sqrt-loop guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-loop (ave guess (/ x guess)) x)))

(define (sqrt x)
  (sqrt-loop (/ x 2.0) x))


(sqrt 2)
(sqrt 4)
(sqrt 6)
(sqrt 9)
