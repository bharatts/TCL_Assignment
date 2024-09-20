#!/usr/bin/env tclsh


puts -nonewline "Enter the number: "
flush stdout
set a [gets stdin]


#puts "[llength $a]"
#set length [llength $a]
set count 0
set rev {}
set temp [expr [llength $a] - 1]
while {$count < [llength $a]} {

    #set temp [expr $length - 1]
    lappend rev [lindex $a $temp]
    incr temp -1
    incr count
}
puts "Reverse list is : $rev"
#puts "[llength $rev]"
