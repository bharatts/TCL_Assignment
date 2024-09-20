#!/usr/bin/env tclsh


set file_name [lindex $argv 0]
set line_number [lindex $argv 1]
set word_pattern [lindex $argv 2]
set replacement_word [lindex $argv 3]

if {[regexp -all {\-h|-help|help} $file_name]} {

    puts "Argument in order: \n1.Filename \n2.Line Number\n3.Word to be replaced\n4.Replacement word"
}

if {[file exists $file_name]} {

    set file_handle [open $file_name r]
    set file_read [read $file_handle]
    set line_list [split $file_read "\n"]
    set lines [lreplace $line_list [expr [llength $line_list] -1] [expr [llength $line_list] -1]]
    if {$line_number == 0} {
        foreach temp $lines {
            #puts "Original Line: $temp"
            set index_value [lsearch $temp $word_pattern]
            set x [lreplace $temp $index_value $index_value $replacement_word]
            puts "Modified Line: $x"
        }
    } else {
        set exact_line_num [lindex $lines [expr $line_number - 1]]

        set rWord [lsearch -exact $exact_line_num $word_pattern]
        if {$rWord == -1} {
            puts "Word dont exist!"
        } else {
            puts "Original Line: $exact_line_num"
            set replace_list [lreplace $exact_line_num $rWord $rWord $replacement_word]
            puts "Modified Line: $replace_list"
        }
    }

close $file_handle
     
} else {
    puts ""
    puts "File don't exists"
}


#if {[file exists $file_name]} {
#    #puts "Files exists!"
#    set file_handle [open $file_name r]
#    if { [regexp -all {\-h|-help|help} $file_name] } {
#
#        puts "Argument in order: \n1.Filename \n2.Line Number\n3.Word to be replaced\n4.Replacement word"
#    } elseif {$line_number == 0} {
#        
#        while {[gets $file_handle each_line] >= 0} {
#            set var [lsearch $each_line [lindex $argv 2]]
#            set r_word [lreplace $each_line $var $var $replacement_word]
#            puts $r_word
#        }
#    } else {
#        set flag 0
#        #set line_num [lindex ]
#        while {[gets $file_handle by_line] >= 0} {
#            if {[]}
#            #set ok [lsearch -exact $by_line $]
#        }
#    }

#} else {
#    puts "Files doesn't exists Please enter the correct file name"
#}



#set file_id [open $filename w]
#puts $file_id 
#close $file_handle
#set line "This is a test line"
#set targetWord "missingWord"  ; # This word is not in the string
#set replacementWord "newWord"

#set modifiedLine [string map {$targetWord $replacementWord} $line]
#puts $modifiedLine
