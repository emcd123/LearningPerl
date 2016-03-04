#!usr/bin/perl -w


#take in dna sequence
$dnaSeq = 'GATGGAACTTGACTACGTAAATT';

#create a variable called for the rna,this will contain dna for now
$rnaSeq = $dnaSeq;

#use the =~ to tell it to work on the string on the right side of this variable
#the s/stands for substitiution, the /g stands for global
#the global means apply the substitution to everywhere in this string
$rnaSeq =~ s/T/U/g;

print $rnaSeq;

exit;
