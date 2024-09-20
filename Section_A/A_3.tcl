#!/usr/bin/env tclsh

#    Accept a list of numbers from the keyboard, print the number and continue until the number is greater than 10.
#    Example Input
#    Enter a number: 5
#    The number is 5
#    Enter a number: 3
#    The number is 3
#    Enter a number: 7
#    The number is 7
#    Enter a number: 11


#set count 0
set flag 0
while {$flag == 0} {

    puts -nonewline "Enter the number: "
    flush stdout
    set num [gets stdin] 
    
    if {$num <= 10} {    
        puts "The number is: $num"
    } else {
        set flag 1
    }
}

