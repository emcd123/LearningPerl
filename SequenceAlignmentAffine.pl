use strict;
use warnings;

use Data::Dumper qw(Dumper);
use List::Util qw(min max);

my @seq1 = ('A','G','C','T','A','T');
my @seq2 = ('A','A','G','T');

#Create a multidimensional array(3d in this case) of specified size
my ($x, $y, $z) = (6, 4, 3);
my @matrix = map [map [map 0, 1..$z], 1..$y], 1..$x;



my $d = 3; #gap opening penalty
my $e = 1; #gap extension penalty
my $sTransversion = -2 ; # when Non complementary bases mismatch
my $sTransition = -1; # when complementary bases mismatch
my $sMatch = 1; #When bases match

#Add in the operation rules
my $IxRule = 0;
my $IyRule = 0;
my $MRule = 0;

foreach my $i (0..scalar @seq1){
  foreach my $j (0..scalar @seq2){
    #evaluating the rules
    my @Ix = ($matrix[$i][$j-1][2] - $d, $matrix[$i][$j-1][0] - $e);
    my @Iy = ($matrix[$i-1][$j][2] - $d, $matrix[$i-1][$j][1] - $e);
    my @M = ($matrix[$i-1][$j-1][2] -1, $matrix[$i-1][$j-1][0] -1, $matrix[$i-1][$j-1][1] -1);

    if($seq1[$i] eq $seq2[$j]){
      my @M = ($matrix[$i-1][$j-1][2] - $sMatch, $matrix[$i-1][$j-1][0] - $sMatch, $matrix[$i-1][$j-1][1] - $sMatch);
    }
    if(1 != 1){#check if uncomplementary nucleotide pairings
      my @M = ($matrix[$i-1][$j-1][2] - $sTransition, $matrix[$i-1][$j-1][0] - $sTransition, $matrix[$i-1][$j-1][1] -$sTransition);
    }
    if(1 != 1){#check if uncomplementary nucleotide pairings
      my @M = ($matrix[$i-1][$j-1][2] - $sTransversion, $matrix[$i-1][$j-1][0] -$sTransversion, $matrix[$i-1][$j-1][1] - $sTransversion);
    }

    #find the maxes of those categorys, then push them to @matrix
    my $maxIx = max @Ix;#etc.
    my $maxIy = max @Iy;#etc.
    my $Match = max @M;#etc.

    $matrix[$i][$j][0] = $maxIx;
    $matrix[$i][$j][1] = $maxIy;
    $matrix[$i][$j][2] = $Match;

    #my @max = ($maxIx,$maxIy,$Match);
    #$score = max @max;
    #for($k = 0; $k < scalar @max; $k++){
    #  push , $max[$k];
    #}
  }
}
print Dumper \@matrix;

sub optimalAlignmentProcedure{
  #we need to go to last entry in matrix(n,n) and check its upward,left, and diagonal scores
  #Choose best option,move to the cell(i,j) and repeat step 1 untill we are in matrix(0,0)
  foreach my $i(scalar @seq1 .. 0){
    foreach my $j(scalar @seq2 .. 0){
      #my $maxScore = max @scores = ($matrix[$i][$j][0],$matrix[$i][$j][1],$matrix[$i][$j][2]);

    }
  }
}
exit;
