#use strict;
#use warnings;

@seqReads = ("CATC","TCAT","CAGG","AGGT","AGGT","TCAT","GGTC","CATC","ATCA","GTCA","TCAG","ATCA");

#$vertices = '';
#@vertices = ();

#foreach $variable (@seqReads){
#  foreach $insideVariable ($variable){
#    $vertex = $insideVariable;
#    $vertices .= $vertex;
#  }
#}
#Folded code,I'm not currently using it but I dont want to delete
@kmers =();
$kmerRef = \@kmers;

foreach $entry (@seqReads){
  $str = substr($entry,0,3);
  push ($kmerRef, $str);
}

foreach $entry (@seqReads){
  $reverseStr = substr($entry,4,3);
  $reverseStr = substr($entry,4,3);
  push ($kmerRef, $reverseStr);
}
#print scalar @kmers;
#print join("\n",@kmers),"\n";


use List::MoreUtils qw(uniq);

my @uniquekmers = uniq(@kmers);

print join("\n",@uniquekmers),"\n";








#for( $i=0; $i < scalar(@seqReads); $i++){
#  for( $j=0; $j < length($seqReads[$i]); $j++){
#    $vertex = $seqReads[$i][$j] + $seqReads[$i][$j+1] + $seqReads[$i][$j+2];
      #if ($vertex ~~ @vertices){
    #push @vertices, $vertex;
#    $vertices .= $vertex;
      #}
#  }
#}

#print $vertices;
#More folded unused code that might be hepful later
exit;
