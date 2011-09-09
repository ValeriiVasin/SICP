#lang racket
(define (runtime)
  (current-milliseconds))

(define (square x)
  (* x x))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))


(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime n (- (runtime) start-time))
       false))

(define (report-prime n elapsed-time)
  (display n)
  (display " *** ")
  (display elapsed-time)
  (newline))

;(define (search-for-primes number-from prime-count)
;  (if (> prime-count 0)
;      (if (timed-prime-test number-from)
;          (search-for-primes (+ number-from 1) (- prime-count 1))
;          (search-for-primes (+ number-from 1) prime-count))
;      false))

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (next-odd n)
  (if (= (remainder n 2) 0)
      (inc n)
      (+ n 2)))

(define (search-for-primes start-number count)
  (if (= count 0)
      (newline)
      (if (timed-prime-test start-number)
          (search-for-primes (next-odd start-number) (dec count))
          (search-for-primes (next-odd start-number) count))))

(search-for-primes 10000 3)
(search-for-primes 100000 3)
(search-for-primes 1000000 3)
(search-for-primes 10000000 3)
(search-for-primes 100000000 3)
(search-for-primes 1000000000 3)
(search-for-primes 10000000000 3)