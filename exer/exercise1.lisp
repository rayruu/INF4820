
;;; This is exercise 1 in subject:
;;; Algorithms for artificial intelligence and natural language processing
    
;;; "1. List Processing.
;; From each of the following lists, show
;; code examples for selecting the element "pear".
; ---------------------------------------------------------------
;; a)

(defun exer1a()
    (nth 2 '(apple orange pear lemon)))

;;; Test run:
  ;; CL-USER> (exer1a)
  ;; PEAR

; ----------------------------------------------------------------
;; b)
(defun exer1b()
    (first (second '((apple orange)(pear lemon)))))

;;; Test run:
  ;; CL-USER> (exer1b)
  ;; PEAR

; ----------------------------------------------------------------
;; c)
(defun exer1c()
    (nth 0 (nth 2 '((apple) (orange) (pear)))))

;;; Test run:
  ;; CL-USER> (exer1c)
  ;; PEAR

; ----------------------------------------------------------------
;; d)
; use nested application: cons to create list in b) and c)

(defun exer1db()
  (cons (cons 'apple (cons 'orange nil))(cons (cons 'pear (cons 'lemon nil))'())))

;;; Test run for creating list b):
;; CL-USER> (exer1db)
;; ((APPLE ORANGE) (PEAR LEMON))

(defun exer1dc()
  (cons (cons 'apple '())(cons (cons 'orange '())(cons (cons 'pear nil) '()))))

;;; Test run for creating list in c):
;; CL-USER> (exer1dc)
;; ((APPLE) (ORANGE) (PEAR))

; ----------------------------------------------------------------
;; e) Assume that the symbol *foo* is bound to a long  list of
;;    unknown length (but with at least two or more elements),
;;    e.g. '(a b c ... x y z). Show a few different approaches
;;    for selecting the next-to-last element of *foo*. As always
;;    with programming, there are many ways to do it - try using
;;    built-in functions and writing your own.

(defparameter *foo* '(a b c d e f))
;; I assume I am going to find "e" in my *foo* list.
;; Here are some examples

(second (reverse *foo*))
;; Test run:
; CL-USER> (second (reverse *foo*))
; E

(nth (- (length *foo*) 2) *foo*)
;; Test run:
; CL-USER> (nth (- (length *foo*) 2) *foo*)
; E
; -------------------------------------------------------------------

;;;; 2 Interpreting Common Lisp

(defun foo (foo)
  (if foo
      (+ 1 (foo (rest foo)))
      0))

;; First we have special form defun associates a function definition:
;; Followed by a name, parameter and a body. So we call our function
;; foo, and we have a parameter/variable/list called foo.
;; So when we call this function we type: (foo (some variable))

;; In the body we have an if statement. Which is if "test" "then" "else".
;; So if foo, "then" we do something. In "then" we have (+ 1 (foo (rest foo)))
;; If we  start with "rest", which destruct lists we can assume that 
;; parameter/variable/list called foo is a list. So the reduced list
;; will be used in the foo function again.

;; This means that the foo function return + 1 everytime the foo function
;; is called. When we dont have a foo it will return 0 in "else"

;; So for example we have foo = '(a b c), then the if statement will work
;; like this: (foo (1 + (foo (1 + (foo (1 + (foo (nil)))))))) which
;; will return 3. This means the foo function is similar to length - function
;; and its achieving its goal by counting length of lists.

;;; Test Run;
;; CL-USER> (foo '(a b c))
;; 3

;; -------------------------------------------------------------------

;;;;; 3. Variable assignment

;;; a)
(let ((foo (list 0 42 2 3)))
  (setf foo (rest foo))
  (first foo))

;;; Test Run:
;; CL-USER> (let ((foo (list 0 42 2 3)))
;; 	      (setf foo (rest foo))
;; 	      (first foo))
;; 42

;;; b)
(let* ((keys '(:a :b :c))
       (values '(0 1 2))
       (pairs (pairlis keys values)))
  (setf (cdr (assoc :b pairs)) 42)
  (rest (assoc :b pairs)))

;;; Test Run:
;; CL-USER> (let* ((keys '(:a :b :c))
;; 		(values '(0 1 2))
;;		(pairs (pairlis keys values)))
;; 	   (setf (cdr (assoc :b pairs)) 42)
;;	   (rest (assoc :b pairs)))
;; 42

;;; c)
(let ((foo (make-hash-table)))
 	   (setf (gethash 'meaning foo) 41)
 	   (incf (gethash 'meaning foo) 1)
 	   (gethash 'meaning foo))

;;; Test Run:
;; CL-USER> (let ((foo (make-hash-table)))
;; 	   (setf (gethash 'meaning foo) 41)
;; 	   (incf (gethash 'meaning foo) 1)
;; 	   (gethash 'meaning foo))
;; 42
;; T

;;; d)
(let ((foo (make-array 5 )))
	   (setf (elt foo 2) 42)
	   (aref foo 2))

;;; Test Run:
;; CL-USER> (let ((foo (make-array 5 )))
;;	   (setf (elt foo 2) 42)
;;	   (aref foo 2))
;; 42

;; -------------------------------------------------------------------

;;;;; 4. Recursion Iteration
;;(defun foo (foo)
;;  (if foo
    ;;  (+ 1 (foo (rest foo)))
  ;;    0))


;;(defun count-member (var n)
;;  (if (eq var (first n))
;;	  (+ 1 (count-member (var (rest n))))
;;	     0))
      
