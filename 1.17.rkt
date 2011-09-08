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

(* 2 2) ; 4
(* 4 4) ; 16
(* 3 9) ; 27