#!/usr/bin/env tclsh


set num {}
set count 0


#while {$count <= 10} {
#        
#    puts -nonewline "Enter the $count number: "
#    flush stdout
#    gets stdin temp
#    lappend num $temp
#    incr count
#}
#puts $num

#set ll [llength $a]
#puts $ll
#puts [lindex $a 2]
#set nums [split $a ""]
set temp 0
puts -nonewline "enter the number: "
flush stdout
set a [gets stdin]
set a_length [llength $a]
while {$count <= 10} {

    #puts [lindex ]
    set temp [expr [lindex $a $count] + $temp]
    incr count
}
#puts $temp
set avg [expr $temp/($a_length * 1.0)]
puts "Average: $avg"

set count 0
set b {}
while {$count < [llength $a]} {

    #puts "[lindex $a $count]"
    if {$avg > [lindex $a $count]} {

        lappend b [lindex $a $count]
    }
    incr count
}
puts "Those numbers below the average: $b"

