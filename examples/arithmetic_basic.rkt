(module simple_arithmetic racket
  (provide add1 sub1 mul1 div1
           add2 sub2 mul2 div2
           add3 sub3 mul3 div3 div4 div5 div6 div7)
  (define add1 (+ 41234 4508))
  (define add2 (+ 4.5 10.2))
  (define add3 (+ 4.5 4))
  (define sub1 (- 123435 35))
  (define sub2 (- 2.5 1.2))
  (define sub3 (- 2.5 1))
  (define mul1 (* 100 80))
  (define mul2 (* 2.5 10.5))
  (define mul3 (* 2.5 10))
  (define div1 (/ 4500 2))
  (define div2 (/ 450.5 9.5))
  (define div3 (/ 2.5 2))
  (define div4 (/ 2.5 0.5))
  (define div5 (/ 10 2))
  (define div6 (/ 5 2))
  (define div7 (/ 5.0 2.5)))
