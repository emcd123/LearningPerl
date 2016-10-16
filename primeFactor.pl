#use strict;
#use warnings;

$largeNumber = 10;
$largestPrimeFactor = 1;

@primes = ();
$primesRef = \@primes;

for ($i = (%largeNumber/2); $i<$largeNumber; $i++ ){
  for($j = 1; $j<10; $j++){
    if($i % $j == 0){
      push $primesRef, $i;
    #print $i
    }
  }
}
print join("\n",@primes),"\n";
#print "Find primes from: ";
$o = $largeNumber // 2;
#print "to: ";
$e = $largeNumber;
@prime_ = ();
for($i=$o; $i<=$e; $i++){
$p=0;
    for($j=1; $j<=sqrt($i); $j++){
        if($i % $j==0){

            $prime_[$p] = "$j";
            $p++;
        }
        if ($prime_[1] == $i){
            print "$i is prime";
            print "\n";
        }
    }

}
