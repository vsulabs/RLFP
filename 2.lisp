;;;; 10. Проверить, является ли матрица верхнетреугольной

;; line -- строка матрицы 
;; n -- количество нулей с начала
(defun valid-line (line n)
 (progn
  (if (eq n 0)
      t
      (if (eq (car line) 0)
          (valid-line (cdr line) (- n 1))
          nil)
  )
 )
)

(defun rev (line)
  (if line
      (append (rev (cdr line)) 
              (list (car line)))
      '()))

(defun not_rev (line) line)
    
(defun check-help (matrix n try_rev)
  (setq first_line (funcall try_rev (car matrix)))
  (setq rest_matrix (cdr matrix))

  (if matrix
      (if (valid-line first_line n)
          (check-help rest_matrix (+ n 1) try_rev)
          nil)
      t))

(defun check (matrix)
  (or (check-help matrix 0 'not_rev)
      (check-help matrix 0 'rev)
  )
)
