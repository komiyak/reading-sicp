(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (display "guess: ")
  (display guess)
  (display ", x: ")
  (display x)
  (newline)
;  (= (improve guess x) guess))
  (< (abs (- (improve guess x) guess))
     (* guess .001)))

(define (sqrt-iter guess x)
  (display "called (sqr-iter) ")
  (newline)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(sqrt 9)
(sqrt 90000000)
(sqrt 0.000001)
