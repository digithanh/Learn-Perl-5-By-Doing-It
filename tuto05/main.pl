#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
	my $file = '..\out.txt';

	open(my $input, $file) or die "Input file not file\n";

	while(my $line = <$input>) {
		if($line =~ /toto/i) {
			print $line
		}
	}
	close($input);
}

main();