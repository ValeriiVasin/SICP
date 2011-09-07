#lang racket
(define (square x) (* x x))
(define (square_summ x y) (+ (square x) (square y)))

(define (abs x)
  (cond ((= x 0) 0)
        ((> x 0) x)
        ((< x 0) (- x))))

(define (abs1 x)
  (if (< x 0) 
      (- x)
      x))

(define (<= x y)
  (or (< x y) (= x y)))

(<= 5 2)