#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
	
	my $input = '.\test.csv';
	
	unless(open(INPUT, $input)) {
		die "\n Connot open $input\n";
	}
	
	<INPUT>;
	
	while(my $line = <INPUT>) {
		my @values = split(",", $line);
		
		print "$values[1]\n"; 
	}
	
	close(INPUT);
}

main();