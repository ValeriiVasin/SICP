#lang racket
(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (* b n)
  (*-iter 0 b n))

(define (*-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (*-iter a (double b) (halve n)))
        (else (*-iter (+ a b) b (- n 1)))))

(define (sqr x)
  (* x x))

(define (pow b n)
  (pow-iter 1 b n))

(define (pow-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (pow-iter a (sqr b) (halve n)))
        (else (pow-iter (* a b) b (- n 1)))))

(pow 2 6) ; 64