#exercice 5 finit
set library(and2) [list "and2" "AND" "I0 I1" "O" "102"]
set library(andn3) [list "andn3" "AND" "I0 I1 NI2" "O" "251"]
set library(nand4) [list "nand4" "NAND" "I0 I1 I1" "Z" "123"]
set library(or2) [list "or2" "OR" "i0 i1" "o" "102"] 
set library(or3) [list "or3" "OR" "i0 i1 i2" "o" "126"]
set library(xor2) [list "xor2" "XOR" "i0 i1" "x" "213"]
set library(xor3) [list "xor3" "XOR" "i0 i1" "x" "245"]
set library(bcell4) [list "bcell4" "BCELL" "a0 a1 b0 b1" "O0 O1" "412"]
set library(bcell5) [list "bcell5" "BCELL" "a0 a1 b0 b1 b2" "O0 O1" "498"]

puts [array size library]

foreach k [array names library] {
	puts "====================="
	puts "key: $k "
	set cell_name [lindex $library($k) 0]
	puts "cell name :  $cell_name"
	set type [lindex $library($k) 1]
	puts "type : $type"
	set input [lindex $library($k) 2]
	puts "input : $input"
	set output [lindex $library($k) 3]
	puts "output : $output"
	set bctiming [lindex $library($k) 4]
	puts "bctimings : $bctiming"
}

#creation d'une fonction 
puts "====================="

proc get_bc_timing { cell } {
	
	global library
	set res 0.0
	foreach cell $cell {

		foreach k [array names library] {

			if {$k == $cell} {
				set bctime [lindex $library($k) 4]
				set res [expr $res + $bctime]	
			}
		}

	}
	puts "la valeur des bctiming est le suivant $res "
}

set path [list "and2" "andn3" "nand4" "or2" "or3" "xor2" "xor3" "bcell4" "bcell5"]
get_bc_timing $path



