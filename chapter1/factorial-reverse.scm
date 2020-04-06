(define (factorial n)
  (if (= n 1)
      1
      (* (factorial (- n 1)) n)))

(define (r-factorial n)
  (define (iter counter)
    (if (= (+ counter) n)
        n
        (* (+ counter) (iter (+ counter 1)))))

  (iter 1))

(factorial 1)
(factorial 6)

(r-factorial 1)
(r-factorial 6)
