$largeNumber = 13195;
$largestPrimeFactor = 1;

@primes = ();

for ($i = 10; $i< $largeNumber; $i++){
  for ($j =0; $j< 10; $j++){
    if ($i %$j == 0)
  }
}

#for ($i = 2; $i < $largeNumber; $i++){
foreach $i (@primes){
  my $j = $largeNumber % $i;
  if (0 == $j ){
    $largestPrimeFactor = $i;
  }
}
print $largestPrimeFactor;
