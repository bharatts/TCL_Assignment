#!/usr/bin/env tclsh

puts "Variable name is this format for ex- a_long_variable_name"
puts -nonewline "Enter the first form of variable name: "
flush stdout
set oldvar [gets stdin]

set old_list [split $oldvar "_"]
set newlist {}
set count 0
lappend newlist [lindex $old_list $count]
while {$count < [llength $old_list]} {
    
    lappend newlist [string totitle [lindex $old_list [expr $count + 1]]]
    incr count
}

set first [expr [llength $newlist] - 1]
puts $first
set list1 [lreplace $newlist $first $first]

set newVar [join $list1 ""]
puts "Second Format Variable Name: $newVar"
