#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
	my $input = '..\out.txt';
	my $output = '..\output.txt';
	
	open(my $in, $input) or die "Can't open $input.\n";
	open(my $out, '>', $output) or die "Can't create $output.\n";
	
	while(my $line = <$in>) {
		
		
		if($line =~ /livres/) {
			$line =~ s/JE/je/ig;
			print $out $line;
		}
	}
	
	close($in);
	close($out);
	
}

main();