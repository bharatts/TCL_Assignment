#!/usr/bin/env tclsh

#creating file

set file_name [lindex $argv 0]
#set file_handle [open "in_text.txt" w]

if {[file exists $file_name]} {

    puts "File already exists!"
} else {
    puts "Creating New one!!"
    puts ""
    set file_handle [open $file_name w]

    if {[file writable $file_name]} {
        #puts "File have Write Permission"

        puts $file_handle "This is line one."
        puts $file_handle "This is line two."
        puts $file_handle "This is line three."
        close $file_handle
    } else {
        puts "Created file dont have write permission."
    }
}

if {[file exists $file_name]} {

    set file_han [open "$file_name" r]
    set lis {}
    while {[gets $file_han each_line] >= 0} {

    lappend lis $each_line
    puts "$each_line"
    }
    #puts $each_line
    set temp [join $lis |]
    puts ""
    puts $temp
    close $file_han
}
