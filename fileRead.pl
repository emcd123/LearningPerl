#!usr/bin/perl -w

$file1 = "text1.txt";
$file2 = "text2.txt";

open(DATAFILE1, $file1);
open(DATAFILE2, $file2);

$data1 = <DATAFILE1>;
$data2 = <DATAFILE2>;

print $data1;
print $data2;

exit;
