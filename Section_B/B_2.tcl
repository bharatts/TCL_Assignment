#!/usr/bin/env tclsh


set file_name "input.txt"
set file_handle [open $file_name r]
set file_con [read $file_handle]
#puts "this is file content:  $fileContent"

set word_count 0
set char_count 0
set sentence_count 0
set sentence_length_count 0
set sentences [split $file_con "."]
#puts "$sentences"
foreach sentence $sentences {
    #set trimSentence [string trim $sentence]
    #puts "$trimSentence"
    #puts "Sentence is : $sentence"
    #puts "  [llength $sentence]"
    if {[string length $sentence] > 0} {
        #here counting sentence count
        incr sentence_count
        #now split the sentence into word
        set words [split $sentence]
        #puts "$words"
        set sentence_length [llength $words]
        #update total sentence length globally
        set sentence_length_count [expr {$sentence_length_count+ $sentence_length}]
        #puts "$sentenceLengthCount"
        
        #update word count and character count
        set word_length [string length $words]

        #puts "$wordLength"
        incr word_count
        set char_count [expr {$char_count+ $word_length}]
        }     
    }
#Calculating Average

set average_word_count 0
if { $word_count >0} {
    set average_word_count [expr $char_count/$word_count]
    }


set average_sentence_length 0
if {$sentence_count >0} {
    set average_sentence_length [expr $sentence_length_count+$sentence_count]
    }
puts "Average Word Length: $average_word_count"
puts "Average sentence Length: $average_sentence_length"
