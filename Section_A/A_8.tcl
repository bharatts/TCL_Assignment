#!/usr/bin/env tclsh


puts -nonewline "Enter the number: "
flush stdout
set num [gets stdin]
#set num_list {}
set flag 0

if {$num != -1} {

    set temp $num
    while {$flag == 0} {
        puts -nonewline "Enter the number: "
        flush stdout
        set num1 [gets stdin]
        if {$num1 == -1} {
            set flag 1
        } else {
             
            puts "Difference is [expr $num1 - $temp]"   
            #puts "Difference is [expr [lindex $num_list 0] - $num]"
            set temp $num1
        }
        #lappend num_list [gets stdin]
        #puts "[lindex $num_list 0]"
    }
}

