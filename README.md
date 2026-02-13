## A03: Basic Erlang Programming

Team: Elizabeth Coats, Manasi Chaudhary, Emma Coye

### p1

`get_numData()`: helper function that takes in a number from user input and returns it

`compute(N)`: performs a computation:

- if the input is not an integer, print "not an integer".
- if the input integer is negative (smaller than 0), compute the absolute value of that integer raised to the 7th power... and print that.
- if the input integer is 0, simply output the 0
- if the input integer is greater than 0 then decide if it is
  a multiple of 7 or not; if it is a multiple of 7, print out
  the 5th root of the integer; if its not a multiple of 7, then
  print out the factorial of that integer.

`main()`: main function, runs the file.

### p2

`loop()`: Repeats the input and computation cycle defined in `p1` forever using tail recursion, unless the user inputs 0.
