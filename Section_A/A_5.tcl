#!/usr/bin/env tclsh


set flag 0
while {$flag == 0} {

    puts -nonewline "Enter the number: "
    flush stdout
    set num [gets stdin]

    if {$num >= 2 && $num <=20} {

        set count 0
        while {$count < $num} {

            set temp 0
            while {$temp < $num} {
                puts -nonewline "*"
                incr temp
            }
            puts ""
            incr count
        }
    } else {
        set flag 1
    }
}
