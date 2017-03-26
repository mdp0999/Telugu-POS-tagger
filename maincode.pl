#!/usr/bin/env perl
use strict;
use warnings;
use utf8;            #used for encoding and decoding purpose
#declaring var i and arrays
my $i = 0;    
my @words = ();
my @vocab_list = ();
my $infile = shift or die "please provide an input file name!\n";
open my $IN,"<encoding(utf8)",$infile or die "unable to open the input file $infile!\n";
my $outfile = shift or die "please provide an output file name!\n";
open my $OUT,">encoding(utf8)",$outfile or die "unable to open the output file $outfile!\n";
while (my $line = <$IN>) {
	chomp $line;
	next if ($line =~ /^\s*$/);#tokonization
		for($line){
		s/<\/?.+?>//g;
		s/\'(.+?)\'/$1/g;
		s/[!.,::?()"\/]//g;
		s/\s~\s//g;
                s/[a-z\/]//g;#deleting small alphabets
                s/[A-Z\/]//g;#deleting caps
                s/[0-9\/]//g;#deleting numeric data
                s/^\s*//;
		s/\s+$//;
		s/\'//;
}
my @element = split/\s+/,$line;#spliting
push @words,@element;
}
foreach my $word (@words) {
#assign input data to each operation in loop and checks true or false 
if($word  =~ /(\w+)కం$|(\w+)గ్నం$|(\w+)రం$|(\w+)గం$|(\w+)హం$|(\w+)ర్వం$|(\w+)వ్యం$|(\w+)ర్మ$|(\w+)దం$|(\w+)స్యం$|(\w+)ల్య$|(\w+)చెం$|(\w+)ర్యం$|(\w+)టం$|(\w+)ల$|(\w+)ష్టం$/&$word !~/(\ w+)న్ని$|(\w+)మ్మ్ర$/){#pattern matching
print $OUT "$word NN\n";
}
if($word =~ /(\w+)లొ$|(\w+)కి$|(\w+)లు$|(\w+)కు$|(\w+)తొ$/){ #pattern matching
print $OUT "$word NN\n";#print output
}if ($word  =~ /(\w+)కి$/){

print $OUT "$word IN\n";
}if($word =~ /(\w+)తొ$/){ 
print $OUT "$word IN\n";
}if($word =~ /(\w+)కు$/){ 
print $OUT "$word IN\n";
}if($word =~ /(\w+)లొ$/){ 
print $OUT "$word IN\n";
}if($word =~ /(\w+)యొక్క$/){ 
print $OUT "$word IN\n";
}if($word =~ /(\w+)లోకి$/){ 
print $OUT "$word IN\n";
}if($word =~ /(\w+)వైపుకు$/){ 
print $OUT "$word IN\n";
}
if ($word  =~ /(\w+)చాడు$|(\w+)చారు$|(\w+)చావు$|(\w+)చాను$/){   #pattern matching
print $OUT "$word VB+Tense+PNG\n";
}
if ($word  =~ /(\w+)టాడు$|(\w+)టాను$|(\w+)టాడు$|(\w+)టాము$|(\w+)టారు$|(\w+)టవి$/) { #pattern matching

print $OUT "$word VB+Tense+PNG\n";
}
if ($word  =~ /(\w+)చ్చారు$|(\w+)చ్చాడు$|(\w+)చ్చును$/) { #pattern matching
print $OUT "$word VB+Tense+PNG\n\n";
}
if ($word  =~ /(\W+)ట$|(\W+)చు$|(\W+)యు$|(\w+)డం$|(\w+)టం$/&$word !~/(\w+)డ్డం$|(\w+)ష్టం$|ట్టం$/&$word !~/\bఖం(\w+)\b/){ #pattern matching
print $OUT "$word VB\n";
}
if ($word  =~ /(\w+)నది$|(\w+)నావు$|(\w+)నాను$|(\w+)నవి$|(\w+)నారు$|(\w+)నాడు$/) { #pattern matching

print $OUT "$word VB+Tense+PNG\n";
}
if ($word  =~ /(\w+)స్తుంది$/){ #pattern matching
print $OUT "$word VB+Tense+PNG\n";
}
if ($word  =~ /(\w+)తుంది$|(\w+)టుంది$/){ #pattern matching
print $OUT "$word VB+Tense+PNG\n";
}
if ($word  =~ /(\w+)యింది$/){ #pattern matching
print $OUT "$word VB+Tense+PNG\n";
}
if ($word  =~ /(\w+)న్నది$|(\w+)న్నవి$/) { #pattern matching
print $OUT "$word VB+Tense+PNG";
} 
if ($word  =~ /(\w+)న్నాను$|(\w+)న్నావు$|(\w+)న్నది$|(\w+)న్నాము$|(\w+)న్నారు$|(\w+)న్నవి$|(\w+)న్నాడు$/) { #pattern matching
print $OUT "$word VB+Tense+PNG\n";
} 
if ($word  =~ /(\w+)తాను$|(\w+)తావు$|(\w+)తాము$|(\w+)తారు$|(\w+)తావి$|(\w+)తాడు$/) { #pattern matching

print $OUT "$word VB+Tense+PNG\n";
}
if ($word  =~ /(\w+)దును$|(\w+)దువు$|(\w+)దుము$|(\w+)దురు$|(\w+)తిమి$|(\w+)తిరు$|(\w+)తివి$|(\w+)తిని$/) { #pattern matching

print $OUT "$word VB+Tense+PNG\n";
} 
if ($word  =~ /(\w+)స్తాను$|(\w+)స్తావు$|(\w+)స్తాము$|(\w+)స్తారు$|(\w+)స్తావి$|(\w+)స్తాడు$/) { #pattern matching

print $OUT "$word VB+Tense+PNG\n";
}
if ($word  =~ /(\w+)స్తుంది$/){  #pattern matching

print $OUT "$word VB+Tense+PNG";
}
if ($word  =~ /(\w+)గా$|(\w+)కు$/){
print $OUT "$word JJ\n";
}
if ($word  =~ /(\w+)వాడు$|(\w+)మైన$|(\w+)వైన$/){

print $OUT "$word JJ\n";
}
if($word =~ /(\w+)పైన$/){ 
print $OUT "$word IN\n";
}if($word =~ /\bలేదా\b/){
print $OUT "$word CC\n";
}if($word =~ /\bమరియు\b/){
print $OUT "$word CC\n";
}if($word =~ /\bకాదు\b/){
print $OUT "$word NEG\n";
}if($word =~ /\bలేదు\b/){
print $OUT "$word NEG\n";
}
if($word =~ /!/){
print $OUT "$word EXLAMETARY\n";
}
if ($word  =~ /(\w+)ప్పుడు$|(\w+)క్కడ$|(\w+)లేదు$|(\w+)గా$/) { #pattern matching
print $OUT "$word RB\n";
}
if($word =~ /\bబాగా\b/){
print $OUT "$word RB\n";
}
if($word =~ /\bబయట\b/){
print $OUT "$word RB\n";
} if($word =~ /\bచాలా\b/){
print $OUT "$word RB\n";
}
}
close $IN;

