use strict;
use warnings;

my $sumSquares = 0;
my $n = 100;

foreach my $i(1..$n){
  $sumSquares += $i**2;
}

my $sumTotSquared = 0;
my $sum = 0;

foreach my $j(1..$n){
  $sum += $j;
}

$sumTotSquared = $sum**2;
my $Diff  = $sumTotSquared - $sumSquares;

print $Diff;
exit;
