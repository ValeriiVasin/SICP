#lang racket
(define (sqr x)
  (* x x))

(define (even? n)
  (= (remainder n 2) 0))

(define (pow b n)
  (pow-iter 1 b n))

(define (pow-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (pow-iter a (sqr b) (/ n 2)))
        (else (pow-iter (* a b) b (- n 1)))))

(pow 5 3) ; 125
  