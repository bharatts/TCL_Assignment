#!/usr/bin/env tclsh


#puts -nonewline "Enter the start time: "
#flush stdout
#set stime [gets stdin]
#puts -nonewline "Enter the finish time: "
#flush stdout
#set ftime [gets stdin]

#set shour [lindex $stime 0]
#set smin [lindex $stime 1]
##puts "$shour $smin"
#set fhour [lindex $ftime 0]
#set fmin [lindex $ftime 1]
#puts "$fhour $fmin"

#if {$fmin < $smin} {
#    set newShour [expr $shour + 1]
#    puts "newshour : $newShour"
#    set x [expr $smin + $fmin]
#    if {}
#    puts "diff hour: [expr $fhour - $newShour]"
#} else {
    
#}


puts "enter the start time: "
flush stdout
set Stime [gets stdin]

puts "enter the finish time: "
flush stdout
set Ftime [gets stdin]


set Shour [lindex $Stime 0]
set Smin [lindex $Stime 1]
#puts "$shour $smin"
set Fhour [lindex $Ftime 0]
set Fmin [lindex $Ftime 1]
#puts "$fhour $fmin"


set shour_min [expr ($Shour * 60) + $Smin]
set fhour_min [expr ($Fhour * 60) + $Fmin]

#puts $shour_min
#puts $fhour_min

set diff [expr $fhour_min - $shour_min]
#puts $diff

set hour [expr $diff / 60]
#puts $hour

set min [expr ($diff % 60)]
#puts $min


puts "Total time spend at work: $hour hours $min mins"

