#!/usr/bin/env tclsh


set file_name [lindex $argv 0]

if {[file exists $file_name]} {

    set file_handle [open $file_name r]
    set file_con [read $file_handle]
    close $file_handle
    #set newList [split $file_con {[\.\?\(\)!]}]
    #puts $newList
    #puts [llength $file_con]

    set count 0
    set temp 0

    while {$count < [llength $file_con]} {
        while {$temp < [expr [llength $file_con] - 1]} {
        
            if {[string length [lindex $file_con $temp]] > [string length [lindex $file_con [expr $temp + 1]]]} {
                set x [lindex $file_con $temp]
                set file_con [lreplace $file_con $temp $temp [lindex $file_con [expr $temp + 1]]]
                set file_con [lreplace $file_con [expr $temp + 1] [expr $temp + 1] $x]
            }
            incr temp
        }
        incr count
    }
    puts [lindex $file_con [expr [llength $file_con] - 1]]

    #set new {}
    #while {[gets $file_handle each_line] >= 0} {
        #puts $each_line
        
    #}
} else {
    puts "files didn't exists"
}
