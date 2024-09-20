#!/usr/bin/env tclsh

set file_name [lindex $argv 0]
set file_handle [open $file_name r]
#set file_con [read $file_handle]
set file_write [open "input2_clean.txt" w]

#set lis [split $file_con ]
set wordcount 0
set sentencecount 0
set charactercount 0
set sen_count {}
while {[gets $file_handle line] >= 0} {
    
    set mylist ""
    #regsub -all {\.} $line " " mylist
    regsub -all { +} $line " " mylist
    regsub -all {\t+} $line " " mylist
    set mylist [string trim $line]

    if {$mylist ne ""} {
    
        incr sentencecount
        set wordcount [expr $wordcount + [llength $mylist]]
        lappend sen_count $mylist
        puts $file_write $mylist
    }
    foreach temp $mylist {
        set charactercount [expr $charactercount + [string length $temp]]
    }
}

set list1 [join $sen_count ]
set total_sen [split $list1 {.}]
set length_total_sen [llength $total_sen]
set str [lreplace $total_sen [expr $length_total_sen - 1] [expr $length_total_sen - 1]]
set sen_length [llength $str]


puts "Total Word count in file: $wordcount"
puts "Total characters in file: $charactercount"
puts "Total sentence in file: $sen_length"
puts "Average Word Length in file: [format "%.3f" [expr $charactercount/ double($wordcount)]]"
puts "Average Sentence Length in file: [format "%.3f" [expr $wordcount/ double($sen_length)]]"


close $file_write
close $file_handle
