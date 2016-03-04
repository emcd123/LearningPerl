#!usr/bin/perl -w

$rnaSeq = 'GAUGGAACUUGACUACGUAAAUU';

$dnaSeq = $rnaSeq;

$dnaSeq =~ tr/U/T/;

print $dnaSeq;

exit;
