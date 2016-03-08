#!/usr/bin/perl

#Inputting a certain motif and checking if a given sequence contains it

print 'Enter filename of seqeunce';

#open a file
$proteinFile = <STDIN>;

#remove the newline from the end of proteinfile
chomp $proteinFile;

unless ( open(PROTEIN_SEQ, $proteinFile) ) {
	print 'Error,cannot open file...';
	exit;#exit program unless file is opened
}
#read into an array
@proteinSequence = <PROTEIN_SEQ>;

#close the file now that the info is in the array
close PROTEIN_SEQ;

#turn the array in a single string
$proteinSequence = join('', @proteinSequence);

#remove whitespace
$proteinSequence =~ s/\s//g;
#\s stands for a space

#Loop through the string
#Search for the given motif
#Report if found
#Exit if no motif given

do{
	print 'Enter a motif to search for: ';
	$motif = <STDIN>;
	#remove endline at end of motif(have to do this on every input)
	chomp $motif;
	if($proteinSequence =~ /$motif/ ){
		print "This motif exists \n\n";
	}else{
		print "This motif does not exist here \n\n";	
	}
} until( $motif =~ /^\s*$/ );
exit;




