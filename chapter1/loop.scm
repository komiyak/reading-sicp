; n = 0 になるまで n + (n - 1) + (n - 2) ... する
; 再帰的プロセスと反復的プロセスで実装してみる。

; 再帰的プロセス
(define (f n)
  (cond ((= n 0) 0)
        (else (+ n
                 (f (- n 1))))))

(f 1) ; 1
(f 2) ; 3
(f 3) ; 6
(f 4) ; 10


; 反復的プロセス
(define (f2 n)
  (iter 0 n))

(define (iter total i)
  (cond ((= i 0) total)
        (else (iter (+ total i) (- i 1)))))

(f2 1)
(f2 2)
(f2 3)
(f2 4)
