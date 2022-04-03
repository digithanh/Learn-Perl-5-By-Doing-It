#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {

	my @files = (
		'..\out.txt',
		'..\home.html',
		'..\err.txt',
	);
	
	foreach my $file (@files) {

		if(-f $file) {
			print "Found file: $file\n";
			print "$?\n";
		} else {
			print "File not found: $file\n";
		}
		
	}
}

main();