(define (factorial n)
  (if (= n 1)
      1
      (* (factorial (- n 1)) n)))

(define (r-factorial n)
  (define (iter counter)
    (if (= (+ counter) n)
        n
        (* counter (iter (+ counter 1)))))

  (iter 1))

(define (factorial-2 n)
  (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(factorial 1)
(factorial 6)

(r-factorial 1)
(r-factorial 6)

(factorial-2 1)
(factorial-2 6)
