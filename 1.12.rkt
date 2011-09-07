#lang racket
(define (pascal m n)
  (cond ((> n m) false)
        ((or (= m n) (= n 1)) 1)
        (else (+ (pascal (- m 1) (- n 1))
                 (pascal (- m 1) n)))))
(pascal 1 1) ; 1
(pascal 2 1) ; 1
(pascal 2 2) ; 1
(pascal 3 1) ; 1
(pascal 3 2) ; 2
(pascal 3 3) ; 1
(pascal 4 1) ; 1
(pascal 4 2) ; 3
(pascal 4 3) ; 3
(pascal 4 4) ; 1