;example.lsp: power of two 

(in-package "USER")

(defun rpower-of-two (n)
 (cond ((= n 0) 1)
  (t (* 2 (rpower-of-two (- n 1))))))