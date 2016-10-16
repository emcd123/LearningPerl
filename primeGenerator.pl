#!usr/bin/perl -w

use strict;
use warnings;

my $largestPrimeFactor=1;

#my $o = 2;
#print "enter upto what number you wish to generate the primes: ";
my $e = 15;#<STDIN>;
my ($i,$j,$p);
my @prime_=();
#print "prime numbers are:\n";

for($i=int($e/2); $i<=$e; $i++){
  $p=0;
  for($j=1; $j<=$i; $j++){
      if($i % $j== 0){
          $prime_[$p] = "$j";
          $p++;
      }
      if ($prime_[1] == $i){
        #print "$i\n";
        if ($e %$i == 0){
          $largestPrimeFactor = $i
        }
        #push @prime_, $i;
      }
  }
}
print $largestPrimeFactor;
#print join("\n",@prime_),"\n";
#print @prime_;
#foreach my $z (@prime_){
#  my $factor = $e % $z;
#  if ($factor == 0){
#    $largestPrimeFactor = $factor;
#  }
#}
#print ;
