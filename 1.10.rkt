#lang racket
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
(A 1 2)
; 1024 => 2**y
(A 2 4)
; 2**16
(A 3 3)
; при разворачивании получим A(3,3) == A(2,4) => 2**16

(define (f n) (A 0 n))
; f = 2*n
(define (g n) (A 1 n))
; g = 2**n
(define (h n) (A 2 n))
; h = 2, если n = 1
; h(n) = 2**h(n-1), если n>1
(define (k n) (* 5 n n))
; k = 5*(n**2)