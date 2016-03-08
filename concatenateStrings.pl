#!/usr/bin/perl -w

#Input first string
#Then remove the newline character
#Create an array out of the string using split
#Rejoin the string from the array using join
$protein1 = <STDIN>;
chomp $protein1;
@protein1 = split('',$protein1);
$proteinSeq1 = join('',@protein1);


#Same as for the first string
$protein2 = <STDIN>;
chomp $protein2;
@protein2 = split('',$protein2);
$proteinSeq2 = join('',@protein2);

#Use dot product to concatenate the 2 strings
$proteinSeq = $proteinSeq1 . $proteinSeq2;

#Print the strings
print "$proteinSeq \n";
#Same as java for loops, print empty space for every element in first string
for($element = 0; $element< length $protein1; ++$element){
	print ' ';
}
#Then print the second string again
print $proteinSeq2;

exit;
