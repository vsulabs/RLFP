;;;; 15. Сгенерировать все сочетания с повторениями из N по K

(defun comb (list1 k)
  (if (> k 0)
      (mapcan (lambda (elem) 
                      (mapcar (lambda (list2) 
                                      (cons elem list2))
                              (comb list1 (- k 1))
                      )
              )
              list1)
      (list (list)))
)
