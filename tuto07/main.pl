#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
	my $file = '..\out.txt';
	
	open(my $input, $file) or die "Input file $file not found.\n";
	
	while(my $line = <$input>) {
		if($line =~ /n.t.e/) {
			print $line;
		}
	}
	
	close($input);
}

main();