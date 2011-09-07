#lang racket
; дробь
(define (fraction sign)
  (/ (sign 1 (sqrt 5))
     2))
; возведение числа в n степень
(define (pow number n)
  (pow-iter 1 number n))

(define (pow-iter prod number count)
  (if (= count 0)
      prod
      (pow-iter (* prod number) number (- count 1))))

; Фибоначчи
(define (fib n)
  (/ (- (pow (fraction +) n) (pow (fraction -) n))
     (sqrt 5)))

(fib 0) ; 0
(fib 1) ; 1
(fib 2) ; 1
(fib 3) ; 2
(fib 4) ; 3
(fib 5) ; 5