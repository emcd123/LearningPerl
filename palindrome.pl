#!usr/bin/perl -w

#checking if a number is palindromic

print 'Enter filename of seqeunce';

#open a file
$strFile = <STDIN>;

#remove the newline from the end of proteinfile
chomp $strFile;

unless ( open(Str_SEQ, $strFile) ) {
	print 'Error,cannot open file...';
	exit;#exit program unless file is opened
}
#read into an array
@strSeq = <str_SEQ>;

#close the file now that the info is in the array
close str_SEQ;

#turn the array in a single string
$seq = join('', @strSeq);

#remove whitespace
$seq =~ s/\s//g;
#\s stands for a space


$reverseSeq = reverse $seq;

if($reverseSeq =~ $seq){
    print "Sequence is palindromic";
}else{
    print "Sequence is not palindromic";
}

exit;
