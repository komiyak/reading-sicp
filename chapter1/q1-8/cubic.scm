(define (square x)
  (* x x))

; (x / y^2 + 2y) / 3
(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))

(define (good-enough? guess x)
  (= (improve guess x) guess))

(define (cubic-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubic-iter (improve guess x) x)))

(define (cubic x)
  (cubic-iter 1.0 x))

(improve 1.0 10000)
(cubic 10000)
