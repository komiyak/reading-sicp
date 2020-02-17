(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? prev-guess guess x)
  (display "prev-guess: ")
  (display prev-guess)
  (display ", guess: ")
  (display guess)
  (display ", x: ")
  (display x)
  (display ", diff: ")
  (display (/ guess prev-guess))
  (newline)
  (> (/ guess prev-guess) 0.99))

(define (sqrt-iter prev-guess guess x)
  (display "called (sqr-iter) ")
  (newline)
  (if (good-enough? prev-guess guess x)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 (improve 1.0 x) x))


(sqrt 9)
(sqrt 90000000)
(sqrt 0.000001)
