use strict;
use warnings;

use Data::Dumper qw(Dumper);
use List::Util qw(min max);

my @seq1 = ('A','G','C','T','A','T');
my @seq2 = ('A','A','G','T');

#Create a multidimensional array(3d in this case) of specified size
my ($x, $y, $z) = (6, 4, 3);
my @matrix = map [map [map 0, 1..$z], 1..$y], 1..$x;

print Dumper \@matrix;


my $d = 3; #gap opening penalty
my $e = 1; #gap extension penalty
my $sTransversion = -2 ; # when Non complementary bases mismatch
my $sTransition = -1; # when complementary bases mismatch
my $sMatch = 1; #When bases match

#Add in the operation rules
my $IxRule = 0;
my $IyRule = 0;
my $MRule = 0;

foreach $i (1..scalar @seq1){
  foreach $j(1..scalar @seq2){
    #evaluating the rules
    my @Ix = ();
    my @Iy = ();
    my @M = ();

    #find the maxes of those categorys, then push them to @matrix
    my $maxIx = max @Ix;#etc.
    my $maxIy = max @Iy;#etc.
    my $Match = max @M;#etc.

  }
}
