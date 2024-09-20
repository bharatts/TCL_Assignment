#!/usr/bin/env tclsh

#puts -nonewline "Enter the character: "
#flush stdout
#set char [gets stdin]

#puts -nonewline "Enter the number: "
#flush stdout
#set num [gets stdin]
puts "$argv0"
set num [lindex $argv 0]
set char [lindex $argv 1]
set count 0

while {$count < $num} {

    puts "$char"


    incr count
}
