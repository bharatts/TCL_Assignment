#!/usr/bin/env tclsh


set flag 0
while {$flag == 0} {
    puts -nonewline "Enter the number: "
    flush stdout
    set num [gets stdin]

    if {$num != 0} {
    
        set count 0 
        while {$count < $num} {
        
            puts  -nonewline "*"
            incr count
        }
        puts ""
    } else {
        set flag 1
    }
}

