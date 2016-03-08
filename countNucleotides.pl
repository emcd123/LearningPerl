#!/usr/bin/perl -w

#read in a file
#Put it into an array,
#join array into a string
#loop through the string
#add to a count of 


$dnaSeq = <STDIN>;
chomp $dnaSeq

@dnaSeq = split('',$dnaSeq);

$countA = 0;
$countG = 0;
$countT = 0;
$countC = 0;

foreach $i (@dnaSeq){
	if($i eq 'A'){
		++$countA;
	}
	if($i eq 'G'){
		++$countG;
	}
	if($i eq 'T'){
		++$countT;
	}
	if($i eq 'C'){
		++$countC;
	}
}
print "A: $countA\n";
print "G: $countG\n";
print "T: $countT\n";
print "C: $countC\n";
