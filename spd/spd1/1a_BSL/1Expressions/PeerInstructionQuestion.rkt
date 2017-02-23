;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname PeerInstructionQuestion) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
#|
The problem below is peer-instruction problem designed to allow you to reconsider your answer after
seeing what other students are thinking.

Step 1:  Select an answer and write a brief (one sentence) explanation of why you think it is correct.

Step 2:  You will be shown answers and explanations from other students.

Step 3:  Reconsider your answer and change it if you now think another choice is better.

Step 4:  Submit your final answer.

PEER INSTRUCTION QUESTION 
When we want to compute the average of 4, 6.2 and -12,
all three of the following expressions evaluate to the correct result.

|#

; computer the average
(/ 3 (+ 4 6.2 -12))
(/ (+ 4 6.2 -12) 3)



