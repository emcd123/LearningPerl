#!usr/bin/perl -w


$file1 = "text1.txt";

open(DATAFILE, $file1);

@data = <DATAFILE>;

@reverseData =  reverse @data;

print @reverseData;

exit;
