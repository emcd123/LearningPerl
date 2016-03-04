#!usr/bin/perl -w

#Same as previous upper casing and lower casing but use different commads this time


$seq = 'GTTTAcgt';#single quotes dont have variable expansion
#double quotes do,it stop certain characters from being printed
print "\U$seq";#upper-casing
print "\n";
print "\L$seq";#lower-casing

exit;
