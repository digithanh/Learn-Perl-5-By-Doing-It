#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
	my $file = '..\out.txt';
	
	open(my $input, $file) or die "Input file $file not find.\n";
	
	while(my $line = <$input>) {
		foreach($line =~ /(\w+)/g) {
			print "$_\n";
		}
	}
	close($input);
}

main();