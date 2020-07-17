; n >= 3 のとき, f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)
; n < 3 のとき,  f(n) = n

; recursive process の実装
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))
; 動作確認
(f 2) ; => 2
(f 3) ; => 4
(f 4) ; => 11



(define (iter total count n)
  (cond ((= count 0) total)
        ((>= n 3) (iter total 3 (- n 1))) ; n >= 3 のとき
        (else (iter (+ total (* count (- count n))) ; ここで f(2) 以下の値を状態変数に加算していく
                    (- count 1)
                    n))))
(define (f2 n)
  (iter 0 3 n))

(f2 2)
(f2 3)
(f2 4)

