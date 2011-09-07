#lang racket

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (define improved-guess (improve guess x))
  (if (good-enough? guess improved-guess)
      guess
      (sqrt-iter improved-guess x)))

(define (good-enough? guess improved-guess)
  (define guess-ratio (/ guess improved-guess))
  (and (< guess-ratio 1.0001) (> guess-ratio 0.9999)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (abs x)
  (if (< x 0) (- x) x))

(sqrt 0.00001)
; 0.0031622926477232706 vs 0.008234553210954832 при сравнении с константой (1.6)