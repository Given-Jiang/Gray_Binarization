set mdldir [file dirname [info script]]

puts "Adding DSP Builder System Gray_Binarization to project\n"

set_global_assignment -name "QIP_FILE" [file join $mdldir "Gray_Binarization.qip" ]

if { [file exist [file join $mdldir "Gray_Binarization_add_user.tcl" ]] } {
	source [file join $mdldir "Gray_Binarization_add_user.tcl" ]
}


# Add an index file for the Librarian
set ipDir "[get_project_directory]/ip/Gray_Binarization/";
if { ![file exists $ipDir] } {
	file mkdir $ipDir;
}
# Reference the file by relative path if possible
if { [file pathtype $mdldir] == "relative" } {
	set mdlIPX "../../$mdldir/Gray_Binarization.ipx"
} else {
	set mdlIPX "${mdldir}/Gray_Binarization.ipx"
}
set ipxFP [open "$ipDir/Gray_Binarization.ipx" w]
puts $ipxFP "<library><index file='$mdlIPX'/></library>"
close $ipxFP

