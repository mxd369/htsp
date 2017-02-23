;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname StringsAndImages) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Primitive values: strings and images
;Commonly used primitives that operate on strings and images
;To form a String: double-quote anyCharacter-except-for-double-quote double-quote

"apple"
"Ada"

;concatenate strings
(string-append "Ada" " " "Lovelace") ; string-append puts two or more strings one after the other in a single line

(string-append "0" "123")

(string-length "apple")   ;string-length operation

(substring "Caribou" 2 4) ;substring operation
(substring "0123456" 2 4) ;0-based indexing