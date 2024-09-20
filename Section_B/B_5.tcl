#!/usr/bin/env tclsh



puts -nonewline "Enter the line of text: "
flush stdout
set line [gets stdin]

#puts $line

puts [string toupper $line]

