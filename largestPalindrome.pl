#use strict;
#use warnings;

$largest = 00;

for($i = 100 ; $i< 1000 ; $i++){
  for($j=100; $j< 1000; $j++){
    my $product = $i * $j;
    my $reverseProduct = reverse $product;
    if ($reverseProduct == $product && $product > $largest) {
      $largest = $product;
    }
  }
}
print $largest;
