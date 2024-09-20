#!/usr/bin/env tclsh


set file_name $argv0
puts "TCL Script Name: $file_name"

#puts [llength $argv]
set arg_length [llength $argv]

set count 1
foreach temp $argv {

    puts "Arugment $count : $temp"
    incr count
}


