;; binary search number guessing game

#lang racket

(define lower 1)
(define upper 100)

(define (start n m)
  (set! lower (min n m))
  (set! upper (max n m))
  (guess))

(define (guess)
  (quotient (+ lower upper) 2))

;; if number is smaller, adjust
(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

;; if number is bigger, adjust
(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))

