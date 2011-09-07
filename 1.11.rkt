#lang racket
; рекурсивный процесс
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (f (- n 2))
                 (f (- n 3))))))

; итеративный процесс
(define (u n)
  (u-iter 3 2 1 n))

(define (u-iter a b c count)
  (cond ((< n 3) n)
        (else 
         (if (= count 3)
             a
             (u-iter (+ a b c) a b (- count 1))))))

(define n 5)
(u n)
; 11
(f n)
; 11