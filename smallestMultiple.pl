use strict;
use warnings;

my $n = 0;
my $value = 20;

while($n == 0){
  foreach my $i(1..20){
    my $check = $value % $i;
    if($check != 0){
       $value += 20;
       last;
    }
    if($i==20){
      $n = $value;
    }
  }
}
print $n;
exit;
