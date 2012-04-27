;; hello.scm

(module test (hello greet)
  (import scheme)

  (define-syntax greet
    (syntax-rules ()
      ((_ whom)
       (begin
         (display "Hello, ")
         (display whom)
         (display " !\n") ) ) ) )

  (define (hello)
    (greet "world") )  )
