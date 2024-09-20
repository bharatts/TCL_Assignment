#1/usr/bin/env tclsh

set file_name [lindex $argv 0]

if {[file exists $file_name]} {

    set file_handle [open "$file_name" r]
    set file_content [read $file_handle]
    close $file_handle
    set file_list [split $file_content "\n"]
    set count 0
    while {$count < [llength $file_list]} {

        if {[string length [lindex $file_list $count]] == 0} {
            puts "[lindex $file_list [expr $count + 1]]"
        }

        incr count
    }
} else {
    puts "The file you Specified does not exist"
}
