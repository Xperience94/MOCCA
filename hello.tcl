
# first create a list
set coders [list "jack" "steve" "william" "franck" "Hugo"]


# this is a comment
set name "your_name"
puts "Hello $name!"

for { set i 0 } { $i < 10 } { incr i } {
puts " i => $i"
}

foreach coder $coders {
puts $coder
}

set third_coder [lindex $coders 2]
puts "the third coder is : $third_coder"

set days(d1) Monday
set days(d2) tuesday
set days(d3) wedesnay
set days(d4) thursday 
set days(d5) friday
set days(d6) saturday
set days(d7) sunday

puts [array size days]

foreach k [array names days] {
	puts "key: $k val: $days($k)"
}





