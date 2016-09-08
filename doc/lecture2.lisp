""" Seibel: Chapter 1,2,3(optional),4,5 and 6

'NESTING'
 (/ (+ 10 20) 2)

General form
(defun name(parameter 1.... parameter_n) body)
 - Has it own rule on evaluation

Tail Recursion:
 -  A more efficient way to define function recursively
 - Use a helper procedure with an accumulator variable to collect the product along the way.
 - Class assume you know difference between non-recursive and recursive procesess.

Try recursive style from lecture

A special form making expressions self-evaluating:
 - The quote operator (or simply : ') suppresses evaluation.
  pi = 3.14...
 'pi = pi

sexps are use to represent both data and code.
Lists are function calls:
   (* 10 (+ 2 3)) -> 50
...

Check lecture.

cons builds up new lists; first and rest destructure them.

"""
