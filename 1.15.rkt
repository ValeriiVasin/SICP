#lang racket
define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(sine 12.15)

; процедура p будет вызвана 5 раз
; порядок роста в терминах кол-ва шагов и в терминах используемой памяти - Q(n/3)