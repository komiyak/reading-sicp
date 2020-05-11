(define (inc n)
  (+ n 1))

(define (dec n)
  (- n 1))

(define (add a b)
  (if (= a 0)
      b
      (inc (add (dec a) b))))

(define (add2 a b)
  (if (= a 0)
      b
      (add2 (dec a) (inc b))))

; ---

(add 4 5)
(add 0 5)
(add 4 0)
(add2 4 5)
(add2 0 5)
(add2 4 0)

; この２つの手続き add, add2 （実際は operator +） は、
; (+ a b) の結果を返すが、それぞれ結果を導くまでのプロセスが異なる。
;
; 手続き add を置き換えモデルにすると以下のようになる。
; a = 4, b = 5 の場合。
;  (inc (+ (dec 4) 5))
;  (inc (+ 3 5))
;  (inc (inc (+ (dec 3) 5)))
;  (inc (inc (+ 2 5)))
;  (inc (inc (inc (+ (dec 2) 5))))
;  (inc (inc (inc (+ 1 5))))
;  (inc (inc (inc (inc (+ (dec 1) 5)))))
;  (inc (inc (inc (inc (+ 0 5)))))
;  (inc (inc (inc (inc 5))))
;  (inc (inc (inc 6)))
;  (inc (inc 7))
;  (inc 8)
;  9
;
; 手続き add2 を置き換えモデルにすると以下のようになる。
; a = 4, b = 5 の場合。
;  (+ (dec 4) (inc 5))
;  (+ 3 6)
;  (+ (dec 3) (inc 6))
;  (+ 2 7)
;  (+ (dec 2) (inc 7))
;  (+ 1 8)
;  (+ (dec 1) (inc 8))
;  (+ 0 9)
;  9
;
; 前者は遅延演算の列が発生しているため再帰的プロセスである。
; 後者は反復的プロセスである。
