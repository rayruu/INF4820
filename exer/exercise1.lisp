;;; This is exercise 1 in subject:
;;; Algorithms for artificial intelligence and natural language processing

;; The .lisp is written as a script. To run the program with all the task.
;; simply write: (exercise1) in slime

(defun exercise1()"Test documentation"
  ;; e) Assume that the symbol *foo* is bound to a long  list of
  ;;    unknown length (but with at least two or more elements),
  ;;    e.g. '(a b c ... x y z). Show a few different approaches
  ;;    for selecting the next-to-last element of *foo*. As always
  ;;    with programming, there are many ways to do it - try using
  ;;    built-in functions and writing your own.
  ;; a)
  (format t "1. List Processing~%~%")
  (format t "From each of the following lists, show~%")
  (format t "code examples for selecting the element  pear:~%")
  (format t "a) '(apple orange pear lemon):~% ->~S~%~%"
	  (nth 2 '(apple orange pear lemon)))
;;; Test run:
  ;; CL-USER> (nth 2 '(apple orange pear lemon))
  ;; PEAR
  
  ;; b)
  (format t "b) '((apple orange) (pear lemon))~% ->~S ~%~%"
	  (first (second '((apple orange)(pear lemon)))))
;;; Test run:
  ;; CL-USER> (first (second '((apple orange)(pear lemon))))
  ;; PEAR
  
  ;; c)
  (format t "c) '((apple) (orange) (pear))~% ->~S ~%~%" 
	  (nth 0 (nth 2 '((apple) (orange) (pear)))))
;;; Test run:
  ;; CL-USER> (nth 0 (nth 2 '((apple) (orange) (pear))))
  ;; PEAR

  ;; d)
  (format t "d) use nested application: cons to create~%")
  (format t " to create list on b) and c)~%")
  (format t "First b): ~% ->~S~%"
	  (cons (cons 'apple (cons 'orange nil))(cons (cons 'pear (cons 'lemon nil))'())))
;;; Test run:
  ;; CL-USER> (cons (cons 'apple (cons 'orange nil))(cons (cons 'pear (cons 'lemon nil))'()))
  ;; ((APPLE ORANGE) (PEAR LEMON))
  (format t "Second c): ~% ->~S~%"
	  (cons (cons 'apple '())(cons (cons 'orange '())(cons (cons 'pear nil) '()))))
;;; TEst run:
  ;; CL-USER> (cons (cons 'apple '())(cons (cons 'orange '())(cons (cons 'pear nil)'())))
  ;; ((APPLE) (ORANGE) (PEAR))

  
  )
