#lang racket

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (abs x)
  (if (< x 0) (- x) x))

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
           x)))


(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

(sqrt 0.00001)

; при вычислении корней способом Лизы мы будем наблюдать зависание программы
; это происходит потому, что новый if вычисляет значения обеих условий
; при вычислении условия else мы и будем наблюдать зацикливание.