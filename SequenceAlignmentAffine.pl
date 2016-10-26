use strict;
use warnings;

use Data::Dumper qw(Dumper);

my @seq1 = ('A','G','C','T','A','T');
my @seq2 = ('A','A','G','T');
my @Inner = (0,0,0);

#@matrix = (\@seq1);

my @matrix = ();
#my $matrixRef = \@matrix;


foreach my $i (@seq1) {
  foreach my $j (@seq2) {
    push  @{$matrix[$i]} , $j;
    foreach my $z (@inner){
      push @{$matrix[$i][$j]} , $z;
    }
  }
}

print Dumper \@matrix ;
