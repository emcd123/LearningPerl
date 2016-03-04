#!usr/bin/perl -w

#finding the complement of a DNA sequence

$seq = 'AAAACCCGGT';

#reverse the Dna sequence using built in string function
$reverseComplement = reverse $seq;

#tr stands for to replace
$reverseComplement  =~ tr/GTCA/CAGT/;

print $reverseComplement;

exit;

