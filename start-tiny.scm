;;;; startup environment for TinyScheme

;; load module emulation adapted from ChickenScheme
(load "tinymodules.scm")

;; import general utitlities (Clojure, SRFI, etc.)
(import utils)

;; JSON library
(import json)

;; parameter parser
(import params)


;; load the sample program
(load "test-params.scm")



(define-syntax or
  (syntax-rules ()
    [(_) #f]
    [(_ e) e]
    [(_ e1 e2 e3 ...)
     (let ([t e1]) (if t t (or e2 e3 ...)))]))

