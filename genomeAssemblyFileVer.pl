#use strict;
#use warnings;

#modules used
use List::MoreUtils qw(uniq);
use Data::Dumper;

$reads = "reads.txt";
#open(DATAFILE1, $file1);
unless ( open($READS, $reads) ) {
	print 'Error,cannot open file...';
	exit;#exit program unless file is opened
}
@seqReads = ();
while(<$READS>){
  #my $read = $_;
  chomp;# $read;
  push @seqReads, $_;
}
close $READS;
print @seqReads;
#$k = length $seqReads[0];
#@seqReads = ("CATC","TCAT","CAGG","AGGT","AGGT","TCAT","GGTC","CATC","ATCA","GTCA","TCAG","ATCA");

@kmers =();
$kmerRef = \@kmers;

foreach $entry (@seqReads){
  $str = substr($entry,0,24);
  push ($kmerRef, $str);
}

foreach $entry (@seqReads){
  $reverseStr = substr($entry,1,24);
  #$reverseStr = substr($entry,1,k-1);
  push ($kmerRef, $reverseStr);
}
#print scalar @kmers;
#print join("\n",@kmers),"\n";
my @uniquekmers = uniq(@kmers);

#$k = $k - 1;

@kmers =();
$kmerRef = \@kmers;

foreach $entry (@seqReads){
  $str = substr($entry,0,23);
  push ($kmerRef, $str);
}

foreach $entry (@seqReads){
  $reverseStr = substr($entry,1,23);
  #$reverseStr = substr($entry,1,k-1);
  push ($kmerRef, $reverseStr);
}
my @uniquekmers = uniq(@kmers);

#print scalar @kmers;
#print join("\n",@kmers),"\n";

#$k = $k - 1;



















#need to repeat line 24 - 41 twice, so wrap in subroutine
}
#for($i=0;$i<2;$i++){
#	createVertices(@seqReads);
#}

my %VERTICES;#empty hash ,fill with arrays next
foreach $i (@uniquekmers){
  $VERTICES{$i} = ();
}
#print join("\n",keys %VERTICES,\"n");
#print Dumper(\%VERTICES);


foreach $key_variable (keys %VERTICES){#loop through each vertex key in hash
  my @tempVertexConnections;#temporary list of edges to push to hash value(use "my @array;" to refrefsh it ineach iteration)
  $tempVertexConnectionsRef = \@tempVertexConnections;
  my $suffix = substr($key_variable,1,22);
  #print $suffix;
  foreach $list_variable (@uniquekmers){#loop through vertices
       my $prefix = substr($list_variable,0,22);
       if($suffix eq $prefix){
         push $tempVertexConnectionsRef, $list_variable;
       }
  }
  #Here I need to push the temp array into the value space for that key in hash
  $VERTICES{$key_variable} = $tempVertexConnectionsRef;
}
#print Dumper(\%VERTICES);

EulerPath(%VERTICES);

sub EulerPath {
  my $startvertex = $uniquekmers[0];

  my $location = $startvertex;
  my @stack = ($startvertex);
  my @euleCircuit;

  while (@stack) {
      if (defined $VERTICES{$location}[0]) {#if there is a key defined at that location go to the 0th position of the value array
          push @stack, $location; #add to the array
          $location = shift @{ $VERTICES{$location} };# move along to next vertice in that array
      } else {
          push @eulerCircuit, $location;# add that edge to the eulercircuit
          $location = pop @stack; #take out original vertice ,so you just have the most recent one to repeat procedure with
      }
  }
  my @reversedEulerCircuit = reverse @eulerCircuit;# perl works backs to front so to get normal order it has to be reversed
  print "@reversedEulerCircuit\n";

  foreach $i (@reversedEulerCircuit){
    print substr($i, 22,1);# find the last character each vertice of the euler trail in order to construct the genome
  }
}
EulerPath(%VERTICES);

exit;
