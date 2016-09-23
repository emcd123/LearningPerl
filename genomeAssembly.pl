#use strict;
#use warnings;

@seqReads = ("CATC","TCAT","CAGG","AGGT","AGGT","TCAT","GGTC","CATC","ATCA","GTCA","TCAG","ATCA");

$vertices = '';
@vertices = ();

foreach $variable (@seqReads){
  foreach $insideVariable ($variable){
    $vertex = $insideVariable;
    $vertices .= $vertex;
  }
}

#$counter = 0;
#while($counter<3){
#  foreach $i ($vertices){
#    push @vertices, $i;
#    $counter = ($counter+1) % 3;
#    unless ($i ) {
      # body...
#    }
#
#  }
#}
@kmers =();
$kmerRef = \@kmers;
foreach $entry (@seqReads){
  $str = substr($entry,0,3);
  push ($kmerRef, $str);

  $reverseStr = substr($entry,4,3);
  push ($kmerRef, $reverseStr);
}

print @kmers;








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

exit;
