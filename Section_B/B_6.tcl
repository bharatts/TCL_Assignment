#!/usr/bin/env tclsh

set count 1
set lis {}

while {$count <=3} {

    puts -nonewline "Enter the line $count: "
    flush stdout
    lappend lis [gets stdin]
    incr count
}

#puts [llength $lis]

set temp [join $lis |]
puts ""
puts $temp
#puts [llength $temp]
