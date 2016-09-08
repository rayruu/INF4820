
;;; 1. List Processing
;; From each of the following lists, show
;; code examples for selecting the element pear:

;; a) '(apple orange pear lemon)
;; b) '((apple orange) (pear lemon))
;; c) '((apple) (orange) (pear))
;; d) Show how the lists (b) and (c) above can
;;    be created through nested applications of
;;    the cons function. To illustrate, for the
;;    list in example (a)
;;
;; (cons 'apple (cons 'orange (cons 'pear (cons 'lemon nil))))
;;
;; e) Assume that the symbol *foo* is bound to a long  list of
;;    unknown length (but with at least two or more elements),
;;    e.g. '(a b c ... x y z). Show a few different approaches
;;    for selecting the next-to-last element of *foo*. As always
;;    with programming, there are many ways to do it - try using
;;    built-in functions and writing your own.

;; a)
(nth 2 '(apple orange pear lemon))

;;; Test run:
;; CL-USER> (nth 2 '(apple orange pear lemon))
;; PEAR

;; b)
(first (second '((apple orange)(pear lemon))))

;;; test run:
;; CL-USER> (first (second '((apple orange)(pear lemon))))
;; PEAR

;; c)
(nth 0 (nth 2 '((apple) (orange) (pear))))

;;; test run:
;; CL-USER> (nth 0 (nth 2 '((apple) (orange) (pear))))
;; PEAR
