#!/usr/bin/env tclsh


puts -nonewline "Enter the number: "
flush stdout
set num [gets stdin]
set count 1
set max_count 10
while {$count <= $max_count} {

    puts "$count times $num = [expr $count * $num]"
    incr count
}
