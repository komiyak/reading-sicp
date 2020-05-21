; p22
; 50, 25, 10, 5, 1 セントがあるとして
; $1 を両替する場合はどれだけあるかを計算せよ。
;
; n 種類の効果を使う、金額 a の両替の場合の数は：
;   A (最初の種類の硬貨以外を使う、金額 a の両替の場合の数）
;   +
;   B (d を最初の効果の額面金額 [denomination] として、
;      n 種類の硬貨を使う 金額 a - d の両替の場合の数)
;
; B って一般的な方法があるのかな...。

(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

; つまりここは配列的に動いている
(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

; $100
(count-change 100)
(count-change 5)
(count-change 10)
