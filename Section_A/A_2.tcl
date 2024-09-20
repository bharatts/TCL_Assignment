#!/usr/bin/env tclsh

#Accept a character and a number from the keyboard and print that many number of copies of that character. 
#(Also write the command line argument version of this script)
#Example Input
#Enter a character: F
#Enter a number: 4
#F
#F
#F
#F



puts -nonewline "Enter the character: "
flush stdout
set char [gets stdin]

puts -nonewline "Enter the number: "
flush stdout
set num [gets stdin]

set count 0

while {$count < $num} {

    puts "$char"


    incr count
}
