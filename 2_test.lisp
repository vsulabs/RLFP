(load "2.lisp")

(defun test (matrix)
  (progn
    (write matrix)
    (write-char #\linefeed)
    (write (check matrix))
    (write-char #\linefeed)
    (write-char #\linefeed)
  )
)

(test '((1 1) 
        (0 1)))

(test '((1 1 1) 
        (0 1 1)
        (0 0 1)))

(test '((1 1 1) 
        (1 1 0)
        (1 0 0)))

(test '((1 1 1) 
        (0 1 0)
        (0 0 0)))

(test '((0 0 0) 
        (0 0 0)
        (0 0 0)))

(test '((1 1 1) 
        (1 1 2)
        (1 0 0)))

(test '((1 1 1) 
        (0 1 1)
        (0 2 1)))

(test '((1 1 1) 
        (0 1 0)
        (0 2 0)))

(test '((2 2 2) 
        (2 2 2)
        (2 2 2)))
