# TCL_Assignment


## Section A

1. Print 8 asterisks (*) down the page.
Output
*
*
*
*
*
*
*
*
2. Accept a character and a number from the keyboard and print that many number of copies of that character. (Also write the command line argument version of this script). <br />
Example Input <br />
Enter a character: F<br />
Enter a number: 4<br />
F<br />
F<br />
F<br />
F<br />

4. Accept a list of numbers from the keyboard, print the number and continue until the number is greater than 10.<br />
Example Input<br />
Enter a number: 5<br />
The number is 5<br />
Enter a number: 3<br />
The number is 3<br />
Enter a number: 7<br />
The number is 7<br />
Enter a number: 11<br />

5. Accept a list of numbers from the keyboard, print out that number of asterisks (*) on that line until the number entered is 0.<br />
Example Input<br />
Enter a number: 5<br />
*****<br />
Enter a number: 1<br />
*<br />
Enter a number: 0<br />

5. Accept a number between 2 and 20 from the keyboard and print a filled square with sides of that number of asterisks (*). (Also write the command line argument version of this script)<br />
Example Input<br />
Enter a number: 3<br />
***<br />
***<br />
***<br />

6. Accept a number from the keyboard and print out its multiplication table from 1 to 10. (Also write the command line argument version of this script)<br />
Example Input<br />
Enter a number: 3<br />
1 times 3 = 3<br />
2 times 3 = 6<br />
10 times 3 = 30<br />

7. Accept the time started and finished at work in hours and minutes, then print out the time spent at work in hours and minutes.<br />
Example Input<br />
Enter start time: 8 30<br />
Enter finish time: 11 15<br />
2 hours 45 minutes<br />

8. Accept a list of numbers terminated by a -1 and print the difference between each pair of numbers.<br />
Example Input<br />
Enter a number: 3<br />
Enter a number: 5<br />
Difference is 2<br />
Enter a number: 6
Difference is 1<br />
Enter a number: 10<br />
Difference is 4<br />
Enter a number: -1<br />

9. Accept ten numbers into an array, and print the numbers in reverse order. Do not use the reverse() function.<br />
Example Input<br />
Enter the numbers: 5 4 6 7 22 19 12 15 2 1<br />
1 2 15 12 19 22 7 6 4 5<br />

10. Accept ten numbers into an array, calculate and print the average, and print out those values that are less than the average.<br />
Example Input<br />
Enter the numbers: 5 4 6 7 22 19 12 15 2 1<br />
Average = 9.3<br />
Those numbers below the average 5 4 6 7 2 1<br />


## Section B

1. Write a TCL script to find and print the longest word in the text file.
2. Write a TCL script that computes the average word length (in characters) and the average sentence length (in words) of a text file.
3. Many programmers use variable names made up of several words. One convention is to write names entirely in lower-case letters, with underline characters separating words, as in a_long_variable_name. An alternative, which appears to be growing in popularity, uses mixed case, with each word beginning with an upper-case letter, except that the whole variable name always begins with a lower-case one (usually to distinguish variables from type names) as in aLongVariableName. Write a TCL script to convert variable names from the first form to the second. (Or, if you prefer, vice versa.)
4. Write a script to sort a list of strings in increasing order of their length.
5. Write a script, which asks for a line of text to be entered on the keyboard, and then displays that text in upper-case on screen.
6. Modify the script to ask for 3 lines of text, and display them on one line with a | symbol between each input.
7. Write a script which you can call like so:<br />
TCL myscript.tcl "Argument 1" "Argument 2" "Argument 3"<br />
The program should take as many command-line arguments as are available, and display them on screen.<br />

8. Create a text file containing the following 3 lines:<br />
This is line one<br />
This is line two<br />
This is line three<br />
Write a script, which reads the file, and displays all the lines of text. Modify it so that the whole file is output on one line with | characters between each input.<br />

9.Write a TCL script, which accepts inputs as command line arguments. The script should function as follows:<br />
+ It should accept four parameters: filename, line number, word to be replaced and replacement word in the same order.
+ Based on the above, the utility must replace the first occurrence of specified word on the line number specified by the user by the replacement word.
+ If the line number passed is "0", the script shall perform a search and replace globally.
+ If “-h” or “—help” is encountered as the first argument, provide some help to the user

10. Write a TCL script to read a file and display all the lines immediately following a blank line.<br />
Example: Contents of a source file<br />
This is the first line<br />
This is the second line<br />
<blank line><br />
This is the third line<br />
This is the fourth line<br />
<blank line><br />
This is the fifth line<br />
:<br />
Output:<br />
This is the third line<br />
This is the fifth line<br />
