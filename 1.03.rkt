#lang racket
(define (square x) (* x x))

(define (square-sum x y) (+ (square x) (square y)))

(define (max-square-sum x y z)
  (if (> x y)
      (if (> y z)
          (square-sum x y)
          (square-sum x z))
      (if (> x z)
          (square-sum x y)
          (square-sum y z))))