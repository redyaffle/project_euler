## Problem 4 of Project Euler [link](https://projecteuler.net/problem=4)

My first inclination was to convert the product to an array of its digits and compare from the outside in. I thought this might reduce processing time since if the first and last digit didn't match, the rest wouldn't have to be compared. However, after completing my solution and determining it was correct, I looked at some other ways people had implemented this problem. I added a method is_palindrome_by_string? and timed both methods with the following results: 

** is_palindrome_by_array? **
$ time ruby palindrome.rb
906609

real  0m8.822s
user  0m8.795s
sys 0m0.024s


** is_palindrome_by_string? **
$ time ruby palindrome.rb
906609

real  0m4.932s
user  0m4.918s
sys 0m0.012s

The string comparison with its reverse is 44% faster than comparing array elements, I assume because of the memory overhead in creating the array and manipulating the digits.

I left both methods present for comparison!
