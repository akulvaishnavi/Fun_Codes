(defun is-prime (n)
  "Check if a number n is prime."
  (if (<= n 1)
      nil
      (loop for i from 2 to (isqrt n) never (zerop (mod n i)))))

(defun is-palindrome (n)
  "Check if a number n is a palindrome."
  (let ((str (write-to-string n)))
    (string= str (reverse str))))

(defun special-number (limit)
  "Find all special numbers (prime and palindrome) up to a given limit."
  (loop for n from 2 to limit
        when (and (is-prime n) (is-palindrome n))
        collect n))

(defun main ()
  "Main function to interact with the user and find special numbers."
  (format t "Enter the upper limit to find special numbers: ")
  (let ((limit (parse-integer (read-line))))
    (format t "Special numbers up to ~d are: ~a~%" limit (special-number limit))))

(main)
