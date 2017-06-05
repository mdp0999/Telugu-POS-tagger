#!/usr/bin/env perl
use strict;
use warnings;

my $i = 0;    
my @words = ();
my @words1 = ();
my $infile = shift or die "please provide an input file name!\n";
open my $IN,"<encoding(utf8)",$infile or die "unable to open the input file $infile!\n";
my $outfile = shift or die "please provide an output file name!\n";
open my $OUT,">encoding(utf8)",$outfile or die "unable to open the output file $outfile!\n";
while (my $line = <$IN>) {
	chomp $line;
        my @sentences = split m/(?<=[.!?])\s+/m, $line;
        
        push @words,@sentences;
}
      foreach my $sentence (@words)  { 
      $i++; 
my @element = split/\s+/,$sentence;
print $OUT "$sentence\n" ;
 foreach my $sentence1 (@element)  { 
print $OUT "$sentence1\n" ;  
    }	

}