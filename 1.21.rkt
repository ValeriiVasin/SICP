#lang racket
(define (smallest-divisor n)
  (smallest-divisor-iter 2 n))

(define (smallest-divisor-iter i n)
  (cond ((= (remainder n i) 0) i)
        ((> (* i i) n) n)
        (else (smallest-divisor-iter (+ i 1) n))))

(smallest-divisor 199)   ; 199
(smallest-divisor 1999)  ; 1999
(smallest-divisor 19999) ; 7