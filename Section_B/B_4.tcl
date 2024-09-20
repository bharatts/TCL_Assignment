#!/usr/bin/env tclsh

puts "Enter the string below: "
flush stdout
set a [gets stdin]
puts $a


puts [string length [lindex $a 0]]
set count 0
set temp 0

while {$count < [llength $a]} {

    while {$temp < [expr [llength $a] - 1]} {
        if {[string length [lindex $a $temp]] > [string length [lindex $a [expr $temp + 1]]]} {
            set x [lindex $a $temp]
            set a [lreplace $a $temp $temp [lindex $a [expr $temp + 1]]]
            set a [lreplace $a [expr $temp + 1] [expr $temp + 1] $x]
        }
        incr temp
    }
    incr count
}

puts $a
